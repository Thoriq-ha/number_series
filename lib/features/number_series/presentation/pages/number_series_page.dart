import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/features/number_series/presentation/bloc/number_series_bloc.dart';
import 'package:test2/features/number_series/presentation/dependency_injection.dart';
import 'package:test2/features/number_series/presentation/widgets/button_number_series_item.dart';

class NumberSeriesPage extends StatelessWidget {
  const NumberSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nNumberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Series'),
      ),
      body: BlocListener<NumberSeriesBloc, NumberSeriesState>(
        bloc: sl<NumberSeriesBloc>(),
        listener: (context, state) {
          if (state is NumberSeriesError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: nNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                children: [
                  Row(
                    children: [
                      ButtonNumberSeriesItem(
                        title: "1",
                        nNumberController: nNumberController,
                        onPressed: () {
                          sl<NumberSeriesBloc>().add(
                              NumberSeriesEventSubmitType1(
                                  nNumberController.text));
                        },
                      ),
                      const SizedBox(width: 10),
                      ButtonNumberSeriesItem(
                        title: "2",
                        nNumberController: nNumberController,
                        onPressed: () {
                          sl<NumberSeriesBloc>().add(
                              NumberSeriesEventSubmitType2(
                                  nNumberController.text));
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ButtonNumberSeriesItem(
                        title: "3",
                        nNumberController: nNumberController,
                        onPressed: () {
                          sl<NumberSeriesBloc>().add(
                              NumberSeriesEventSubmitType3(
                                  nNumberController.text));
                        },
                      ),
                      const SizedBox(width: 10),
                      ButtonNumberSeriesItem(
                        title: "4",
                        nNumberController: nNumberController,
                        onPressed: () {
                          sl<NumberSeriesBloc>().add(
                              NumberSeriesEventSubmitType4(
                                  nNumberController.text));
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BlocBuilder<NumberSeriesBloc, NumberSeriesState>(
                bloc: sl<NumberSeriesBloc>(),
                builder: (context, state) {
                  if (state is NumberSeriesLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is NumberSeriesLoaded) {
                    return Expanded(
                      child: ListView(
                        children: [
                          ...state.numberSeries.map(
                            (number) => Card(
                              color: Colors.blue,
                              child: ListTile(
                                title: Text(number.toString()),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
