part of '../search_view.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
    required this.onSubmitted,
    required this.controller,
  });
  final void Function(String value) onSubmitted;
  final TextEditingController controller;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      cursorColor: Theme.of(context).colorScheme.inverseSurface,
      cursorOpacityAnimates: true,
      onTapOutside: (event) {
        _focusNode.unfocus();
      },
      onSubmitted: widget.onSubmitted,
      controller: widget.controller,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        fillColor: context.isDarkMode
            ? _isFocused
                ? AppColors.primaryColor.withAlpha(20)
                : AppColors.loginWithButtonDarkColor
            : _isFocused
                ? AppColors.primaryColor.withAlpha(30)
                : AppColors.textFieldColor,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        suffixIcon: BlocBuilder<SearchCubit, SearchState>(
          buildWhen: (previous, current) {
            if (current == previous) return false;
            return current.maybeWhen(
              changeSortBy: () => true,
              orElse: () => false,
            );
          },
          builder: (context, state) {
            return switch (context.read<SearchCubit>().searchBy) {
              SearchBy.courses => SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: IconButton(
                          icon: const Icon(
                            Icons.sort,
                            size: 28,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => const SortByBottomSheet(),
                              scrollControlDisabledMaxHeightRatio:
                                  double.infinity,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            AppSVGs.filter,
                            width: 24,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => const FilterBottomSheet(),
                              scrollControlDisabledMaxHeightRatio:
                                  double.infinity,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              SearchBy.mentors => const SizedBox(),
            };
          },
        ),
        suffixIconColor: AppColors.primaryColor,
        hintText: LocaleKeys.Search_search.tr(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
        ),
        filled: true,
        constraints: const BoxConstraints(
          maxWidth: AppConstrains.maxWidth,
        ),
      ),
    );
  }
}
