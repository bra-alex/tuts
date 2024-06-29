import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';

class VendorModel extends Vendor {
  const VendorModel(
      {required super.id,
      required super.email,
      required super.logo,
      required super.name,
      required super.phoneNumber,
      required super.vendorName,
      required super.prefix,
      required super.points,
      required super.isVerified});

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    return VendorModel(
        id: json['id'],
        email: json['email'],
        logo: json['logo'],
        name: json['name'],
        phoneNumber: json['phone_number'],
        vendorName: json['vendor_name'],
        prefix: json['prefix'],
        points: json['points'],
        isVerified: json['is_verified']);
  }
}
