part of "counter_bloc.dart";

//базовый класс для реализации состояний
class CounterState {
  int countValue;
  int price;
  CounterState({required this.countValue, required this.price});
}

//одно состояние, с базовым значением 0
class CounterInitial extends CounterState {
  CounterInitial() : super(countValue: 0, price: 0);
}

//сложный стейт, буду обрабатывать при нажатии на кнопку Купить
// продублировал сюда переменные, так как не мог с ними работать в bloc через on<>
class PressedButtonState extends CounterState {
  int price;
  int countValue;
  PressedButtonState({required this.price, required this.countValue})
      : super(countValue: 0, price: 0);
}
