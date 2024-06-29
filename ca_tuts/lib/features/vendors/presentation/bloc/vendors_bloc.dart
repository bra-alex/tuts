import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'vendors_event.dart';
part 'vendors_state.dart';

class VendorsBloc extends Bloc<VendorsEvent, VendorsState> {
  VendorsBloc() : super(VendorsInitial()) {
    on<VendorsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
