import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/context_extensions.dart';

import '../../themes/app_colors.dart';
import 'data/section_page.dart';
part 'widgets/section_nav_button.dart';
part 'widgets/sections_nav_bar.dart';

class SectionsView extends StatefulWidget {
  const SectionsView(
      {super.key, required this.pages, this.isScrollable = false});
  final List<SectionPage> pages;
  final bool isScrollable;
  @override
  State<SectionsView> createState() => _SectionsViewState();
}

class _SectionsViewState extends State<SectionsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.pages.length, vsync: this);
    _pageController = PageController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: TabBar(
            controller: _tabController,
            indicatorColor: AppColors.primaryColor,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.primaryColor,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            labelPadding: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            isScrollable: widget.isScrollable,
            tabAlignment: widget.isScrollable ? TabAlignment.start : null,
            tabs: widget.pages
                .map(
                  (page) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      page.title,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          dragStartBehavior: DragStartBehavior.down,
          children: widget.pages
              .map(
                (page) => page.child,
              )
              .toList(),
        )
      ],
    );
  }
}
