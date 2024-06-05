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
  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widget.pages.length,
          itemBuilder: (context, index) {
            return _SectionNavButton(
              isSelected: _index == index,
              title: widget.pages[index].title,
              onPressed: () {
                setState(
                  () {
                    _index = index;
                    widget.controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    widget.pages[index].onPressed?.call();
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
