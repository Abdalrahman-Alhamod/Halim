import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../utils/context_extensions.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    super.key,
    required this.title,
    this.icon,
    this.description,
    this.color = AppColors.warning,
  });

  final String title;
  final IconData? icon;
  final String? description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? AppColors.loginWithButtonDarkColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: 6,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      title: Row(
                        children: [
                          if (icon != null) ...[
                            Icon(
                              icon,
                              color: color,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: color.withOpacity(
                                .8,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: description == null || description == ''
                          ? null
                          : Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                description!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: color,
                                ),
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
