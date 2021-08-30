import 'package:flutter/material.dart';

class SummaryCardErrorWidget extends StatelessWidget {
  const SummaryCardErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
          size: 50,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Não foi possível conectar ao servidor',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
