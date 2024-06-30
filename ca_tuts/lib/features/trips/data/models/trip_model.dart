import 'package:ca_tuts/features/trips/domain/entities/trip.dart';

class TripModel extends Trip {
  const TripModel({
    required super.id,
    required super.source,
    required super.vendorId,
    required super.destination,
    required super.vendorName,
    required super.createdAt,
    required super.updatedAt,
    required super.eta,
    required super.active,
    required super.distance,
    required super.stops,
  });

  factory TripModel.fromJSON(Map<String, dynamic> json) {
    return TripModel(
      id: json["id"],
      source: json["source"],
      vendorId: json["vendorId"],
      destination: json["destination"],
      vendorName: json["vendor_name"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      eta: json["eta"],
      active: json["active"],
      distance: json["distance"],
      stops: json['stops']
          .map<StopModel>(
            (e) => StopModel.fromJson(e),
          )
          .toList(),
    );
  }
}

class StopModel extends Stop {
  const StopModel({required super.stop});

  factory StopModel.fromJson(Map<String, dynamic> json) =>
      StopModel(stop: json['stop']);
}
