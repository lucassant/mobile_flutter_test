import 'package:hasura_connect/hasura_connect.dart';
import 'package:summary_card/data/entities/summary_card/wealth_summary.dart';
import 'package:summary_card/data/repositories/summary_card/summary_card_repository_.dart';

class SummaryCardRepositoryImpl implements SummaryCardRepository {
  @override
  Future<WealthSummary> getWealthSummaryByPk(int idWealthSummary) async {
    String url = 'https://harura-fliper-test.herokuapp.com/v1/graphql';
    HasuraConnect hasuraConnect = HasuraConnect(url,
        headers: {'x-hasura-admin-secret': 'fliperdevtest2020'});

    const String getSummaryByPk = r'''
     query querySummary($id: Int!) {
      wealthSummary_by_pk(id: $id) {
        cdi
        gain
        hasHistory
        id
        profitability
        total
      }
    }
    ''';
    try {
      var result = await hasuraConnect
          .query(getSummaryByPk, variables: {"id": idWealthSummary});

      return WealthSummary.fromMap(result['data']['wealthSummary_by_pk']);
    } catch (e) {
      print(e.toString());
      throw Exception('Não foi possível conectar ao servidor.');
    }
  }
}
