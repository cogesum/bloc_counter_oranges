part of "counter_bloc.dart";

//абстрактный класс событий
abstract class CounterEvent {}

// +1
class IncrementEvent extends CounterEvent {}

// -1
class DecrementEvent extends CounterEvent {}

// *2
class DoubleMultiplyEvent extends CounterEvent {}

// /2
class DoubleDivideEvent extends CounterEvent {}

//нажатие на клаишу "Купить"
class PressButtonEvent extends CounterEvent {}
