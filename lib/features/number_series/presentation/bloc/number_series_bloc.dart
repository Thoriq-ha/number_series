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
        emit(const NumberSeriesError("Please Input Valid Number"));
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
        emit(const NumberSeriesError("Please Input Valid Number"));
        return;
      }

      List<String> numberSeries = List.generate(
          (number * 2) - 1,
          (index) =>
              ((index >= number) ? ((number * 2 - index) - 1) : (index + 1))
                  .toString());

      emit(NumberSeriesLoaded(numberSeries));
    });
    on<NumberSeriesEventSubmitType3>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Please Input Valid Number"));
        return;
      }
      List<String> numberSeries =
          List.generate(number, (index) => (10 + (11 * index)).toString());

      emit(NumberSeriesLoaded(numberSeries));
    });
    on<NumberSeriesEventSubmitType4>((event, emit) {
      emit(NumberSeriesLoading());
      int? number = int.tryParse(event.numberString);
      if (number == null) {
        emit(const NumberSeriesError("Please Input Valid Number"));
        return;
      }
      List<String> numberSeries = List.generate(number, (index) {
        var n = index + 1;
        if (n % 5 == 0) {
          return "LIMA";
        } else if (n % 7 == 0) {
          return "TUJUH";
        } else {
          return n.toString();
        }
      });
      emit(NumberSeriesLoaded(numberSeries));
    });
  }
}
