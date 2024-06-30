import 'package:ca_tuts/features/trips/domain/entities/trip.dart';
import 'package:equatable/equatable.dart';

class Trips extends Equatable {
  final List<Trip> data;
  final num total, page, limit, totalPages;

  const Trips(
      {required this.data,
      required this.total,
      required this.page,
      required this.limit,
      required this.totalPages});

  @override
  List<Object?> get props => [data, total, page, limit, totalPages];
}
