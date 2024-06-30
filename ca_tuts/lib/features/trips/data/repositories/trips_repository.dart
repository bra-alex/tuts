import 'package:dartz/dartz.dart';
import 'package:ca_tuts/features/vendors/domain/entities/vendor.dart';

abstract class TripsRepository {
  Future<Either<String, Vendor>> getAllTrips(String token, String id);

  Future<Either<String, Vendor>> getActiveTrips(
    String token,
    String id,
  );

  Future<Either<String, Vendor>> getTripDetails(String token, String id);

  Future<Either<String, Vendor>> addTrip(
      Map<String, dynamic> body, String token);

  Future<Either<String, Vendor>> updateTripDetails(
      Map<String, dynamic> body, String token, String id);

  Future<Either<String, Vendor>> deleteTrip(String token, String id);
}
