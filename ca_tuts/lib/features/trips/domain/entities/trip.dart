import 'package:equatable/equatable.dart';

class Trip extends Equatable {
  final String? id,
      source,
      vendorId,
      destination,
      vendorName,
      createdAt,
      updatedAt;
  final num? eta;
  final bool? active;
  final num? distance;
  final List<Stop>? stops;

  const Trip(
      {required this.id,
      required this.source,
      required this.vendorId,
      required this.destination,
      required this.vendorName,
      required this.createdAt,
      required this.updatedAt,
      required this.eta,
      required this.active,
      required this.distance,
      required this.stops});

  @override
  List<Object?> get props => [
        id,
        source,
        vendorId,
        destination,
        vendorName,
        createdAt,
        updatedAt,
        eta,
        active,
        distance,
      ];
}

class Stop extends Equatable {
  final String stop;

  const Stop({required this.stop});

  @override
  List<Object?> get props => [stop];
}
