import 'package:ca_tuts/features/vendors/data/datasources/remoteds.dart';
import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';
import 'package:ca_tuts/features/vendors/domain/repositories/vendor_repository.dart';
import 'package:dartz/dartz.dart';

class VendorRepositoryImpl implements VendorRepository {
  final VendorsRemoteDataSource remoteDataSource;

  VendorRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<String, Vendor>> createVendor(
      Map<String, dynamic> params) async {
    try {
      final response = await remoteDataSource.createVendor(params);

      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Vendor>> getVendorDetails(String stringToken) async {
    try {
      final response = await remoteDataSource.getVendorDetails(stringToken);

      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Vendor>> updateVendorDetails(
      Map<String, dynamic> updatedValues, String token) async {
    try {
      final response =
          await remoteDataSource.updateVendorDetails(updatedValues, token);

      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
