import 'package:summary_card/data/entities/summary_card/wealth_summary.dart';

abstract class SummaryCardRepository {
  Future<WealthSummary> getWealthSummaryByPk(int idWealthSummary);
}
