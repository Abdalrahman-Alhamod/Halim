part of '../search_results.dart';

class _SearchResultsHeader extends StatelessWidget {
  const _SearchResultsHeader({
    required this.serchKeyword,
    required this.resultsNum,
  });
  final String serchKeyword;
  final int resultsNum;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                text: '${LocaleKeys.Search_resultsFor.tr()} "',
              ),
              TextSpan(
                text: serchKeyword,
                style: TextStyle(
                  color: AppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: '"',
              ),
            ],
          ),
        ),
        Text(
          '$resultsNum ${LocaleKeys.Search_found.tr()}',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
