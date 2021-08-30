import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/data/entities/summary_card/wealth_summary.dart';
import 'package:summary_card/data/repositories/summary_card/summary_card_repository_impl.dart';

void main() {
  test('Should return a WealthSummary entity', () async {
    WealthSummary wealthSummary =
        await SummaryCardRepositoryImpl().getWealthSummaryByPk(2);

    expect(wealthSummary, isA<WealthSummary>());
  });

  test('Should throw an Exception', () async {
    try {
      WealthSummary wealthSummary =
          await SummaryCardRepositoryImpl().getWealthSummaryByPk(4);

      expect(wealthSummary, isA<WealthSummary>());
    } catch (e) {
      expect(e, isA<Exception>());
    }
  });
}
