import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';
import 'package:ca_tuts/features/vendors/domain/repositories/vendor_repository.dart';
import 'package:dartz/dartz.dart';

class GetVendorDetails {
  final VendorRepository repository;

  GetVendorDetails({required this.repository});

  Future<Either<String, Vendor>> call(String token) async {
    return await repository.getVendorDetails(token);
  }
}
