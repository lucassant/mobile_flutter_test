import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:summary_card/app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'pt_BR';

  runApp(AppWidget());
}
