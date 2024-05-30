part of '../search_view.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
    required this.onSubmitted,
  });
  final void Function(String value) onSubmitted;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
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
      controller: _controller,
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
          padding: const EdgeInsets.all(14),
          child: Icon(
            Icons.search,
          ),
        ),
        prefixIconColor:
            _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
        suffixIcon: SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: IconButton(
                  icon: Icon(
                    Icons.sort,
                    size: 28,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SortByBottomSheet(),
                      scrollControlDisabledMaxHeightRatio: double.infinity,
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
                      builder: (context) => FilterBottomSheet(),
                      scrollControlDisabledMaxHeightRatio: double.infinity,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        suffixIconColor: AppColors.primaryColor,
        hintText: 'Search',
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
