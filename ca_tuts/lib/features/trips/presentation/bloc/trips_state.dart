part of 'trips_bloc.dart';

abstract class TripsState extends Equatable {
  const TripsState();  

  @override
  List<Object> get props => [];
}
class TripsInitial extends TripsState {}
