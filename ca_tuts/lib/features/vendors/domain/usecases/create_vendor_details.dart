import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';
import 'package:ca_tuts/features/vendors/domain/repositories/vendor_repository.dart';
import 'package:dartz/dartz.dart';

class CreateVendorDetails {
  final VendorRepository repository;

  CreateVendorDetails({required this.repository});

  Future<Either<String, Vendor>> call(
    Map<String, dynamic> createVendor,
  ) async {
    return await repository.createVendor(createVendor);
  }
}
