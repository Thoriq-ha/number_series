import 'package:get_it/get_it.dart';
import 'package:test2/features/number_series/presentation/bloc/number_series_bloc.dart';

var sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(
    () => NumberSeriesBloc(),
  );
}
