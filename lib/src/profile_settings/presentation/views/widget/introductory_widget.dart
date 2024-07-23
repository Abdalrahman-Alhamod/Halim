import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';

class IntroductoryWidget extends StatefulWidget {
  final String title;
  final String text;

  const IntroductoryWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<IntroductoryWidget> createState() => _IntroductoryWidgetState();
}

class _IntroductoryWidgetState extends State<IntroductoryWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : AppColors.textFieldColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(widget.title,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600)),
                  ),
                  const Spacer(),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: _isExpanded ? Colors.black : AppColors.primaryColor,
                    size: 24.0,
                  ),
                ],
              ),
              if (_isExpanded)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                ),
              if (_isExpanded)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text.rich(
                    TextSpan(
                      text: widget.text,
                      style: const TextStyle(
                        height: 1.3,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
