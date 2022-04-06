import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) =>
        emit(CounterState(countValue: state.countValue + 1, price: 0)));

    //добавил условие, чтобы не было отрицательных значений
    on<DecrementEvent>((event, emit) {
      if (state.countValue > 0) {
        emit(CounterState(countValue: state.countValue - 1, price: 0));
      } else if (state.countValue < 0) {
        emit(CounterState(countValue: state.countValue, price: 0));
      }
    });

    on<DoubleMultiplyEvent>((event, emit) =>
        emit(CounterState(countValue: state.countValue * 2, price: 0)));

    on<DoubleDivideEvent>((event, emit) {
      //отлавливаю, если делю на 0
      try {
        emit(CounterState(countValue: state.countValue ~/ 2, price: 0));
      } catch (_) {
        emit(CounterState(countValue: state.countValue, price: 0));
      }
    });

    on<PressButtonEvent>(((event, emit) => emit(PressedButtonState(
        price: state.countValue * 20, countValue: state.countValue))));
  }
}
