part of 'number_series_bloc.dart';

abstract class NumberSeriesEvent extends Equatable {
  const NumberSeriesEvent();
}

class NumberSeriesEventSubmitType1 extends NumberSeriesEvent {
  final String numberString;
  const NumberSeriesEventSubmitType1(this.numberString);

  @override
  List<Object?> get props => [numberString];
}

class NumberSeriesEventSubmitType2 extends NumberSeriesEvent {
  final String numberString;
  const NumberSeriesEventSubmitType2(this.numberString);

  @override
  List<Object?> get props => [numberString];
}

class NumberSeriesEventSubmitType3 extends NumberSeriesEvent {
  final String numberString;
  const NumberSeriesEventSubmitType3(this.numberString);

  @override
  List<Object?> get props => [numberString];
}

class NumberSeriesEventSubmitType4 extends NumberSeriesEvent {
  final String numberString;
  const NumberSeriesEventSubmitType4(this.numberString);

  @override
  List<Object?> get props => [numberString];
}
