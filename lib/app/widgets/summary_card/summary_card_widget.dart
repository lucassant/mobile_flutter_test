import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:summary_card/app/styles/app_colors.dart';
import 'package:summary_card/app/widgets/rounded_button_widget.dart';
import 'package:summary_card/app/widgets/summary_card/text_summary_body_widget.dart';
import 'package:summary_card/app/widgets/summary_card/text_summary_header_widget.dart';
import 'package:summary_card/data/entities/summary_card/wealth_summary.dart';

import '../vertical_spacer_widget.dart';

class SummaryCardWidget extends StatelessWidget {
  final WealthSummary wealthSummary;

  const SummaryCardWidget({Key? key, required this.wealthSummary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader,
            VerticalSpacerWidget(height: 34),
            _buildMainValueColumn,
            VerticalSpacerWidget(height: 34),
            _buildDetailsColumn,
            VerticalSpacerWidget(height: 12),
            _buildCardFooter,
          ],
        ),
      ),
    );
  }

  Widget get _buildHeader => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Seu resumo',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            child: SvgPicture.asset('assets/svgs/more_vert.svg'),
            onTap: () {},
          ),
        ],
      );

  Widget get _buildMainValueColumn {
    var currencyFormatter = NumberFormat();

    return Column(
      children: [
        TextSummaryHeaderWidget(text: 'Valor investido'),
        VerticalSpacerWidget(height: 7),
        TextSummaryBodyWidget(
          text: 'R\$ ${currencyFormatter.format(wealthSummary.total)}',
          fontSize: 23,
        ),
      ],
    );
  }

  Widget get _buildDetailsColumn {
    var currencyFormatter = NumberFormat();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextSummaryHeaderWidget(text: 'Rentabilidade/mês'),
            TextSummaryBodyWidget(
                text:
                    '${currencyFormatter.format(wealthSummary.profitability)}%'),
          ],
        ),
        VerticalSpacerWidget(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextSummaryHeaderWidget(text: 'CDI'),
            TextSummaryBodyWidget(
                text: '${currencyFormatter.format(wealthSummary.cdi)}%'),
          ],
        ),
        VerticalSpacerWidget(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextSummaryHeaderWidget(text: 'Ganho/mês'),
            TextSummaryBodyWidget(
                text: 'R\$ ${currencyFormatter.format(wealthSummary.gain)}'),
          ],
        ),
      ],
    );
  }

  Widget get _buildCardFooter => Column(
        children: [
          Divider(
            color: AppColors.borders,
          ),
          VerticalSpacerWidget(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SizedBox()),
              Expanded(
                child: RoundedButtonWidget(
                  label: 'VER MAIS',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      );
}
