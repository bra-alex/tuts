import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';
import 'package:ca_tuts/features/vendors/domain/repositories/vendor_repository.dart';
import 'package:dartz/dartz.dart';

class EditVendorDetails {
  final VendorRepository repository;

  EditVendorDetails({required this.repository});

  Future<Either<String, Vendor>> call(
    Map<String, dynamic> updateValues,
    String token,
  ) async {
    return await repository.updateVendorDetails(updateValues, token);
  }
}
