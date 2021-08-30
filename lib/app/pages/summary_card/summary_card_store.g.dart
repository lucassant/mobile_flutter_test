// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_card_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SummaryCardStore on _SummaryCardStoreBase, Store {
  Computed<PageState>? _$pageStateComputed;

  @override
  PageState get pageState =>
      (_$pageStateComputed ??= Computed<PageState>(() => super.pageState,
              name: '_SummaryCardStoreBase.pageState'))
          .value;
  Computed<WealthSummary?>? _$wealthSummaryComputed;

  @override
  WealthSummary? get wealthSummary => (_$wealthSummaryComputed ??=
          Computed<WealthSummary?>(() => super.wealthSummary,
              name: '_SummaryCardStoreBase.wealthSummary'))
      .value;

  final _$_pageStateAtom = Atom(name: '_SummaryCardStoreBase._pageState');

  @override
  PageState get _pageState {
    _$_pageStateAtom.reportRead();
    return super._pageState;
  }

  @override
  set _pageState(PageState value) {
    _$_pageStateAtom.reportWrite(value, super._pageState, () {
      super._pageState = value;
    });
  }

  final _$_wealthSummaryAtom =
      Atom(name: '_SummaryCardStoreBase._wealthSummary');

  @override
  WealthSummary? get _wealthSummary {
    _$_wealthSummaryAtom.reportRead();
    return super._wealthSummary;
  }

  @override
  set _wealthSummary(WealthSummary? value) {
    _$_wealthSummaryAtom.reportWrite(value, super._wealthSummary, () {
      super._wealthSummary = value;
    });
  }

  final _$getWealthSummaryAsyncAction =
      AsyncAction('_SummaryCardStoreBase.getWealthSummary');

  @override
  Future<void> getWealthSummary() {
    return _$getWealthSummaryAsyncAction.run(() => super.getWealthSummary());
  }

  final _$_SummaryCardStoreBaseActionController =
      ActionController(name: '_SummaryCardStoreBase');

  @override
  void _setPageState(PageState value) {
    final _$actionInfo = _$_SummaryCardStoreBaseActionController.startAction(
        name: '_SummaryCardStoreBase._setPageState');
    try {
      return super._setPageState(value);
    } finally {
      _$_SummaryCardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageState: ${pageState},
wealthSummary: ${wealthSummary}
    ''';
  }
}
