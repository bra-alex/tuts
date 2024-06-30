import 'package:ca_tuts/features/trips/domain/entities/trips.dart';

class GetActiveTrips extends Trips {
  const GetActiveTrips(
      {required super.data,
      required super.total,
      required super.page,
      required super.limit,
      required super.totalPages});
}
