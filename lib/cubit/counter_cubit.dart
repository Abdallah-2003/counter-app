import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapps1/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  int asc = 0, zsc = 0;

  void counterFunction({required String team, required int buttomNum}) {
    if (team.toUpperCase() == 'ASC') {
      asc += buttomNum;
      emit(CounterAscState());
    } else {
      zsc += buttomNum;
      emit(CounterZscState());
    }
  }
}
