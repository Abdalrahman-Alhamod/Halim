import 'package:flutter/material.dart';

import 'arrow_widget.dart';

/// Default animation duration
const Duration _kExpand = Duration(milliseconds: 260);

/// This widget unfolds a hidden widget to the user, called [child].
/// This action is performed when the user clicks the 'expand' arrow.
class ExpandChildWidget extends StatefulWidget {
  /// Message used as a tooltip when the widget is minimized.
  /// Default value set to [MaterialLocalizations.of(context).collapsedIconTapHint].
  final String? collapsedHint;

  /// Message used as a tooltip when the widget is maximazed.
  /// Default value set to [MaterialLocalizations.of(context).expandedIconTapHint].
  final String? expandedHint;

  /// Defines padding value.
  ///
  /// Default value if this widget's icon-only: [EdgeInsets.all(4)].
  /// If text is shown: [EdgeInsets.all(8)].
  final EdgeInsets? arrowPadding;

  /// Color of the arrow widget. Defaults to the caption text style color.
  final Color? arrowColor;

  /// Size of the arrow widget. Default is [30].
  final double arrowSize;

  /// Icon that will be used instead of an arrow.
  /// Default is [Icons.expand_more].
  final IconData? icon;

  /// Style of the displayed message.
  final TextStyle? hintTextStyle;

  /// Defines arrow rendering style.
  final ExpandArrowStyle expandArrowStyle;

  /// Autocapitalise tooltip text.
  final bool capitalArrowtext;

  /// How long the expanding animation takes. Default is 260ms.
  final Duration animationDuration;

  /// This widget will be displayed if the user clicks the 'expand' arrow.
  final Widget? child;

  /// Ability to hide arrow from display when content is expanded.
  final bool hideArrowOnExpanded;

  /// Ability to expand from init
  final bool expand;

  const ExpandChildWidget({
    super.key,
    this.collapsedHint,
    this.expandedHint,
    this.arrowPadding,
    this.arrowColor,
    this.arrowSize = 30,
    this.icon,
    this.hintTextStyle,
    this.expandArrowStyle = ExpandArrowStyle.icon,
    this.capitalArrowtext = true,
    this.expand = false,
    this.animationDuration = _kExpand,
    this.child,
    this.hideArrowOnExpanded = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExpandChildWidgetState createState() => _ExpandChildWidgetState();
}

class _ExpandChildWidgetState extends State<ExpandChildWidget>
    with SingleTickerProviderStateMixin {
  /// Custom animation curve for arrow controll.
  static final _easeInCurve = CurveTween(curve: Curves.easeInOutCubic);

  /// Controlls the rotation of the arrow widget.
  static final _halfTurn = Tween<double>(begin: 0.0, end: 0.5);

  /// General animation controller.
  late AnimationController _controller;

  /// Animations for height control.
  late Animation<double> _heightFactor;

  /// Animations for arrow's rotation control.
  late Animation<double> _iconTurns;

  /// Auxiliary variable to controll expand status.
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    // Initializing the animation controller with the [duration] parameter
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    // Initializing both animations, depending on the [_easeInCurve] curve
    _heightFactor = _controller.drive(_easeInCurve);
    _iconTurns = _controller.drive(_halfTurn.chain(_easeInCurve));

    _isExpanded = widget.expand;
    _isExpanded ? _controller.forward() : _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Method called when the user clicks on the expand arrow
  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      _isExpanded ? _controller.forward() : _controller.reverse();
    });
  }

  /// Builds the widget itself. If the [_isExpanded] parameter is 'true',
  /// the [child] parameter will contain the child information, passed to
  /// this instance of the object.
  Widget _buildChild(BuildContext context, Widget? child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: _heightFactor.value,
            child: child,
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor:
                widget.hideArrowOnExpanded ? 1 - _heightFactor.value : 1,
            child: InkWell(
              onTap: _handleTap,
              child: ExpandArrowWidget(
                collapsedHint: widget.collapsedHint,
                expandedHint: widget.expandedHint,
                animation: _iconTurns,
                padding: widget.arrowPadding,
                onTap: _handleTap,
                arrowColor: widget.arrowColor,
                arrowSize: widget.arrowSize,
                icon: widget.icon,
                hintTextStyle: widget.hintTextStyle,
                expandArrowStyle: widget.expandArrowStyle,
                capitalArrowtext: widget.capitalArrowtext,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChild,
      child: widget.child,
    );
  }
}
