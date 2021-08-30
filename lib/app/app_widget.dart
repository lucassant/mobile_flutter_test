import 'package:flutter/material.dart';
import 'package:summary_card/app/pages/summary_card/summary_card_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summary Card App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'proxima-nova',
      ),
      home: SummaryCardPage(),
    );
  }
}
