import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen_events.dart';

class OperationBloc extends Bloc<HomeScreenEvents, int> {
  OperationBloc() : super(0) {
    on<AddEvents>((event, emit) => emit(state + 1));
    on<DecrementEvent>((event, emit) => emit(state - 1));
  }
}
