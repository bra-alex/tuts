import 'package:ca_tuts/features/trips/domain/entities/trips.dart';

class TripsModel extends Trips {
  const TripsModel(
      {required super.data,
      required super.total,
      required super.page,
      required super.limit,
      required super.totalPages});

  factory TripsModel.fromJSON(Map<String, dynamic> json) {
    return TripsModel(
        data: json["data"],
        total: json["total"],
        page: json["page"],
        limit: json["limit"],
        totalPages: json["totalPages"]);
  }
}
