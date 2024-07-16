part of '../sections_view.dart';

class _SectionsNavBar extends StatefulWidget {
  const _SectionsNavBar({
    required this.controller,
    required this.pages,
  });
  final PageController controller;
  final List<SectionPage> pages;
  @override
  State<_SectionsNavBar> createState() => _SectionsNavBarState();
}

class _SectionsNavBarState extends State<_SectionsNavBar> {
  late int _index;
  late final ScrollController _scrollController;
  @override
  void initState() {
    _index = 0;
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 54,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widget.pages.length,
          itemBuilder: (context, index) {
            return _SectionNavButton(
              isSelected: _index == index,
              title: widget.pages[index].title,
              onPressed: (buttonWidth) {
                setState(
                  () {
                    _index = index;
                    widget.controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    widget.pages[index].onPressed?.call();

                    _scrollToSelectedButton(index, buttonWidth);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _scrollToSelectedButton(int index, double buttonWidth) {
    // Calculate the offset based on the selected button width
    double offset =
        buttonWidth * index + (index * 16); // 16 is the horizontal padding

    // Calculate target scroll position to center the selected button
    double targetScrollPosition =
        offset - (MediaQuery.of(context).size.width / 3) + (buttonWidth / 2);
    print(targetScrollPosition);

    // Animate scrolling to the calculated position
    _scrollController.animateTo(
      targetScrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
