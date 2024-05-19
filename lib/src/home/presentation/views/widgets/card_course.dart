import 'package:flutter/material.dart';
import 'package:halim/src/home/presentation/views/functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourse extends StatefulWidget {
  final double followers;
  final double evaluation;
  final String category;
  final int price;
  final String name;
  final String imageUrl;
  const CardCourse(
      {super.key,
      required this.followers,
      required this.evaluation,
      required this.category,
      required this.price,
      required this.name,
      required this.imageUrl});

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: screenSize.width * 0.88,
        height: 150,
        decoration: BoxDecoration(
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkFlatButtonColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imageUrl),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 113, 132, 204)
                                  .withOpacity(0.25)),
                          child: Center(
                            child: Text(
                              widget.category,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: Icon(
                            isBookmarked
                                ? Icons.bookmark
                                : Icons.bookmark_border_outlined,
                            size: 28,
                            color: isBookmarked ? Colors.blue : Colors.blue,
                          ),
                          onPressed: () {
                            if (isBookmarked) {
                              showRemoveBookmarkBottomSheet(context);
                            }
                            setState(() {
                              isBookmarked = !isBookmarked;
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${widget.price}  ',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.amber[400],
                          size: 25,
                        ),
                        Text(
                          '  ${widget.evaluation}  | ',
                          style: TextStyle(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${widget.followers} students',
                          style: TextStyle(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
