import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/assets/app_images.dart';
import '../../../../../core/themes/app_colors.dart';

class NotificationsCard extends StatelessWidget {
  final String imageUrl;
  final IconData icon;
  final String title;
  final String description;
  final String? textToCopy;
  final Color? picColor;

  const NotificationsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.textToCopy,
    this.picColor = Colors.blue,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    String displayText = textToCopy ?? '';
    if (displayText.length > 25) {
      displayText = '${displayText.substring(0, 22)}...';
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: screenSize.width,
        height: 130,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.darkFlatButtonColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: 90,
                    width: 70,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AppImages.iconPublic,
                          color: picColor,
                        ),
                        Icon(
                          icon,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            description,
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white54
                                  : Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        if (textToCopy != null && textToCopy!.isNotEmpty)
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                      color: context.isDarkMode
                                          ? Colors.black38
                                          : Colors.grey[200],
                                      borderRadius:
                                          const BorderRadius.horizontal(
                                              left: Radius.circular(6),
                                              right: Radius.circular(6))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.8, horizontal: 10.0),
                                    child: Text(
                                      displayText,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: context.isDarkMode
                                            ? Colors.grey[300]
                                            : Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.copy,
                                  size: 20,
                                  color: context.isDarkMode
                                      ? Colors.white70
                                      : Colors.black,
                                ),
                                onPressed: () {
                                  Clipboard.setData(
                                      ClipboardData(text: textToCopy!));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Text copied to clipboard')));
                                },
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
