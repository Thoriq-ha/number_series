import 'package:flutter/material.dart';

class ButtonNumberSeriesItem extends StatelessWidget {
  const ButtonNumberSeriesItem({
    super.key,
    required this.nNumberController,
    required this.onPressed,
    required this.title,
  });

  final TextEditingController nNumberController;
  final Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.orange),
          ),
          onPressed: onPressed,
          child: Text(title)),
    );
  }
}
