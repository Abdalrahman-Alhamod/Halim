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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                text: '${LocaleKeys.Search_resultsFor.tr()} "',
              ),
              TextSpan(
                text: serchKeyword,
                style: const TextStyle(
                  color: AppColors.primaryColor,
                ),
              ),
              const TextSpan(
                text: '"',
              ),
            ],
          ),
        ),
        Text(
          '$resultsNum ${LocaleKeys.Search_found.tr()}',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
