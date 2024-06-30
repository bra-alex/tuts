import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trips_event.dart';
part 'trips_state.dart';

class TripsBloc extends Bloc<TripsEvent, TripsState> {
  TripsBloc() : super(TripsInitial()) {
    on<TripsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
