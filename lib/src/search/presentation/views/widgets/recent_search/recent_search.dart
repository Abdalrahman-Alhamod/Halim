import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/widgets/refresh_base.dart';
import 'package:halim/src/search/presentation/manager/search_keywords_cubit/search_keywords_cubit.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/assets/app_svgs.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../data/models/search_keyword_model.dart';
part 'recent_search_item.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({
    super.key,
    required this.onItemTap,
  });
  final void Function(String value) onItemTap;
  @override
  Widget build(BuildContext context) {
    context.read<SearchKeywordsCubit>().getSearchKeywords();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.Search_recent.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<SearchKeywordsCubit>().deleteSearchKeywords();
              },
              child: Text(
                LocaleKeys.Search_clearAll.tr(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: context.isDarkMode
              ? AppColors.darkFlatButtonColor
              : Colors.grey.shade300,
        ),
        SizedBox(
          height: context.height * 0.75,
          child: RefreshBase(
            onRefresh: () =>
                context.read<SearchKeywordsCubit>().getSearchKeywords(),
            child: BlocConsumer<SearchKeywordsCubit, SearchKeywordsState>(
              buildWhen: context.read<SearchKeywordsCubit>().buildWhen,
              listenWhen: context.read<SearchKeywordsCubit>().listenWhen,
              listener: context.read<SearchKeywordsCubit>().listen,
              builder: (context, state) {
                final List<SearchKeywordModel> searchKeywords =
                    context.read<SearchKeywordsCubit>().searchKeywords;
                return context.read<SearchKeywordsCubit>().build(
                      context: context,
                      state: state,
                      child: ListView.builder(
                        itemCount: searchKeywords.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: RecentSearchItem(
                            title: searchKeywords[index].word ?? '',
                            onClearPressed: () {
                              context
                                  .read<SearchKeywordsCubit>()
                                  .deleteSearchKeyword(
                                    id: searchKeywords[index].id!,
                                  );
                            },
                            onTap: () {
                              onItemTap.call(searchKeywords[index].word ?? '');
                            },
                          ),
                        ),
                      ),
                    );
              },
            ),
          ),
        ),
      ],
    );
  }
}
