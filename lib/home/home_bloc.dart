import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_class/home/home_event.dart';

class HomeBloc extends Bloc<HomeEvent, int> {
  HomeBloc() : super(0) {
    on<OnAddButtonPressed>(incrementCounter);
    on<OnMinusButtonPressed>(decrementCounter);
  }

  void incrementCounter(event, emitter) async {
    try {
      /// set loading state
      emitter(state + 1);

      /// Do something

      /// set success state
      emitter(state + 1);
    } catch (e) {
      /// set error state
      emitter(state - 1);
    }
  }

  void decrementCounter(event, emitter) => emitter(state - 1);
}
