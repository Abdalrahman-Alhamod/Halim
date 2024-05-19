import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

class NotificationsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final Color? picColor;
  const NotificationsCard({super.key, 
    required this.imageUrl,
    required this.title,
    required this.description,  this.picColor= Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: screenSize.width,
        height: 100,
        decoration: BoxDecoration(
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? AppColors.darkFlatButtonColor
            : AppColors.lightFlatButtonColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
           /* Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  imageUrl,
                ),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 80,width: 70,child: Image.asset(
                    imageUrl,
                    color: picColor,
                  ) ,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Wrap(direction: Axis.vertical, spacing: 5, children: [
                      Text(
                        title,
                        style: TextStyle(
                           color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                           color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white54
                          : Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
