import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'number_series_event.dart';
part 'number_series_state.dart';

class NumberSeriesBloc extends Bloc<NumberSeriesEvent, NumberSeriesState> {
  NumberSeriesBloc() : super(NumberSeriesInitial()) {
    on<NumberSeriesEvent>((event, emit) {});
    on<NumberSeriesEventSubmitType1>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Invalid number"));
        return;
      }
      List<String> numberSeries =
          List.generate(number, (i) => (i + 1).toString());
      emit(NumberSeriesLoaded(numberSeries));
    });
    on<NumberSeriesEventSubmitType2>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Invalid number"));
        return;
      }
      List<String> numberSeries = [];
      for (int i = 0; i < number * 2; i++) {
        if (i == number) {
          continue;
        }
        if (i >= number) {
          numberSeries.add((number * 2 - i).toString());
        } else {
          numberSeries.add((i + 1).toString());
        }
      }

      emit(NumberSeriesLoaded(numberSeries));
    });
    on<NumberSeriesEventSubmitType3>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Invalid number"));
        return;
      }
      List<String> numberSeries = [];
      int startNum = 10;
      int step = 11;
      for (int i = 0; i < number; i++) {
        numberSeries.add((startNum + (step * i)).toString());
      }

      emit(NumberSeriesLoaded(numberSeries));
    });
    on<NumberSeriesEventSubmitType4>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Invalid number"));
        return;
      }
      List<String> numberSeries = [];

      for (int i = 1; i <= number; i++) {
        if (i % 5 == 0) {
          numberSeries.add("LIMA");
        } else if (i % 7 == 0) {
          numberSeries.add("TUJUH");
        } else {
          numberSeries.add(i.toString());
        }
      }
      emit(NumberSeriesLoaded(numberSeries));
    });
  }
}
