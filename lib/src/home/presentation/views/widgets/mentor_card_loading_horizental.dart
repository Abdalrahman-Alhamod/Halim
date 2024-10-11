import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/widgets/shimmer_box.dart';

class MentorCardLoadingListHorizontal extends StatelessWidget {
  const MentorCardLoadingListHorizontal({super.key, this.itemCount = 10});

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              width: 15,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: ClipOval(
                      child: ShimmerBox(
                    radius: 29.5,
                    width: 60,
                    height: 60,
                  )),
                ),
                ShimmerBox(
                  height: 20,
                  width: 40,
                )
              ],
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 7);
      },
    );
  }

  // content(BuildContext context) {
  //   return const Padding(
  //     padding: EdgeInsets.symmetric(vertical: 16.0),
  //     child: ClipOval(
  //         child: ShimmerBox(
  //       width: 56,
  //       height: 56,
  //     )),
  //   );
  // }
}
