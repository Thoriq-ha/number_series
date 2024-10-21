part of 'number_series_bloc.dart';

abstract class NumberSeriesState extends Equatable {
  const NumberSeriesState();

  @override
  List<Object> get props => [];
}

class NumberSeriesInitial extends NumberSeriesState {}

class NumberSeriesLoading extends NumberSeriesState {}

class NumberSeriesError extends NumberSeriesState {
  final String message;

  const NumberSeriesError(this.message);
}

class NumberSeriesLoaded extends NumberSeriesState {
  final List<String> numberSeries;

  const NumberSeriesLoaded(this.numberSeries);
}
