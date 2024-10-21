import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/core/observer.dart';
import 'package:test2/features/number_series/presentation/dependency_injection.dart';
import 'package:test2/features/number_series/presentation/pages/number_series_page.dart';

void main() {
  Bloc.observer = MyObserver();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NumberSeriesPage(),
    );
  }
}
