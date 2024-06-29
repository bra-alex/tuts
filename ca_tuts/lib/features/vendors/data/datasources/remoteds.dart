import 'dart:convert';

import 'package:ca_tuts/features/vendors/data/models/vendor_model.dart';
import 'package:http/http.dart';

abstract class VendorsRemoteDataSource {
  Future<VendorModel> getVendorDetails(String stringToken);

  Future<VendorModel> updateVendorDetails(
    Map<String, dynamic> updatedValues,
    String token,
  );

  Future<VendorModel> createVendor(Map<String, dynamic> params);
}

class VendorRemoteDataSourceImpl implements VendorsRemoteDataSource {
  final Client client;

  VendorRemoteDataSourceImpl({required this.client});

  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  @override
  Future<VendorModel> createVendor(Map<String, dynamic> params) async {
    final url = Uri.parse("https://advenr-api.onrender.com/api/vendors");

    final response = await client.post(url, headers: headers, body: params);

    final data = jsonDecode(response.body);

    if (response.statusCode != 200) throw Exception(data["message"]);

    return VendorModel.fromJson(data);
  }

  @override
  Future<VendorModel> getVendorDetails(String stringToken) async {
    final url = Uri.parse("https://advenr-api.onrender.com/api/vendors");

    final response = await client.get(
      url,
      headers: {'Authorization': 'Bearer $stringToken'},
    );

    final data = jsonDecode(response.body);

    if (response.statusCode != 200) throw Exception(data["message"]);

    return VendorModel.fromJson(data);
  }

  @override
  Future<VendorModel> updateVendorDetails(
      Map<String, dynamic> updatedValues, String token) async {
    final url = Uri.parse("https://advenr-api.onrender.com/api/vendors");

    headers.addAll({'Authorization': 'Bearer $token'});

    final response =
        await client.patch(url, headers: headers, body: updatedValues);

    final data = jsonDecode(response.body);

    if (response.statusCode != 200) throw Exception(data["message"]);

    return VendorModel.fromJson(data);
  }
}
