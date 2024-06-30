import 'package:ca_tuts/features/trips/domain/entities/trip.dart';
import 'package:ca_tuts/features/trips/domain/entities/trips.dart';
import 'package:dartz/dartz.dart';

abstract class TripsRepository {
  Future<Either<String, Trips>> getAllTrips(String token, String id);

  Future<Either<String, Trips>> getActiveTrips(
    String token,
    String id,
  );

  Future<Either<String, Trip>> getTripDetails(String token, String id);

  Future<Either<String, Trip>> addTrip(Map<String, dynamic> body, String token);

  Future<Either<String, Trip>> updateTripDetails(
      Map<String, dynamic> body, String token, String id);

  Future<Either<String, String>> deleteTrip(String token, String id);
}
