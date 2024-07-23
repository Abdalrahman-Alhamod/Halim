import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/context_extensions.dart';

import '../../themes/app_colors.dart';
import 'data/section_page.dart';
part 'widgets/section_nav_button.dart';
part 'widgets/sections_nav_bar.dart';

class SectionsView extends StatefulWidget {
  const SectionsView({super.key, required this.pages});
  final List<SectionPage> pages;
  @override
  State<SectionsView> createState() => _SectionsViewState();
}

class _SectionsViewState extends State<SectionsView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SectionsNavBar(controller: _controller, pages: widget.pages),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          dragStartBehavior: DragStartBehavior.down,
          children: widget.pages.map((e) => e.child).toList(),
        )
      ],
    );
  }
}
