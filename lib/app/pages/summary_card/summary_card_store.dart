import 'package:mobx/mobx.dart';
import 'package:summary_card/data/entities/summary_card/wealth_summary.dart';
import 'package:summary_card/data/repositories/summary_card/summary_card_repository_impl.dart';
part 'summary_card_store.g.dart';

class SummaryCardStore = _SummaryCardStoreBase with _$SummaryCardStore;

enum PageState { initial, loading, error }

abstract class _SummaryCardStoreBase with Store {
  @observable
  PageState _pageState = PageState.initial;

  @computed
  PageState get pageState => _pageState;

  @action
  void _setPageState(PageState value) => _pageState = value;

  @observable
  WealthSummary? _wealthSummary;

  @computed
  WealthSummary? get wealthSummary => _wealthSummary;

  @action
  Future<void> getWealthSummary() async {
    _setPageState(PageState.loading);

    try {
      _wealthSummary =
          await SummaryCardRepositoryImpl().getWealthSummaryByPk(2);

      _setPageState(PageState.initial);
    } catch (e) {
      _setPageState(PageState.error);
    }
  }
}
