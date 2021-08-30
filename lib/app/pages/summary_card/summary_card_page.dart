import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:summary_card/app/pages/summary_card/summary_card_store.dart';
import 'package:summary_card/app/styles/app_colors.dart';
import 'package:summary_card/app/widgets/summary_card/summary_card_error_widget.dart';
import 'package:summary_card/app/widgets/summary_card/summary_card_loading_widget.dart';
import 'package:summary_card/app/widgets/summary_card/summary_card_widget.dart';

class SummaryCardPage extends StatefulWidget {
  const SummaryCardPage({Key? key}) : super(key: key);

  @override
  _SummaryCardPageState createState() => _SummaryCardPageState();
}

class _SummaryCardPageState extends State<SummaryCardPage> {
  final store = SummaryCardStore();

  @override
  void initState() {
    store.getWealthSummary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Observer(
        builder: (context) {
          if (store.pageState == PageState.loading) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SummaryCardLoadingWidget(),
              ),
            );
          }

          if (store.pageState == PageState.error) {
            return Center(child: SummaryCardErrorWidget());
          }

          return SafeArea(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SummaryCardWidget(
                wealthSummary: store.wealthSummary!,
              ),
            ),
          ));
        },
      ),
    );
  }
}
