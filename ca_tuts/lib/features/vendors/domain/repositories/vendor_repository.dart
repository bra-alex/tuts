import 'package:dartz/dartz.dart';
import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';

abstract class VendorRepository {
  Future<Either<String, Vendor>> getVendorDetails(String stringToken);

  Future<Either<String, Vendor>> updateVendorDetails(
    Map<String, dynamic> updatedValues,
    String token,
  );

  Future<Either<String, Vendor>> createVendor(Map<String, dynamic> params);
}
