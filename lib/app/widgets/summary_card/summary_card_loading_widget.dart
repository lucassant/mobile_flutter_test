import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:summary_card/app/styles/app_colors.dart';

import '../vertical_spacer_widget.dart';

class SummaryCardLoadingWidget extends StatelessWidget {
  const SummaryCardLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[200]!,
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
      ),
    );
  }

  Widget get _buildHeader => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SvgPicture.asset('assets/svgs/more_vert.svg'),
        ],
      );

  Widget get _buildMainValueColumn => Column(
        children: [
          _loadingContainer,
          VerticalSpacerWidget(height: 7),
          _loadingContainer,
        ],
      );

  Widget get _buildDetailsColumn => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _loadingContainer,
              _loadingContainer,
            ],
          ),
          VerticalSpacerWidget(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _loadingContainer,
              _loadingContainer,
            ],
          ),
          VerticalSpacerWidget(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _loadingContainer,
              _loadingContainer,
            ],
          ),
        ],
      );

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
                child: _loadingContainer,
              ),
            ],
          ),
        ],
      );

  Widget get _loadingContainer => Container(
        width: 120,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
      );
}
