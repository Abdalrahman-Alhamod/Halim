import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/shimmer_box.dart';

class WelcomeCardLoading extends StatelessWidget {
  const WelcomeCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const ClipOval(
                  child: ShimmerBox(
                width: 56,
                height: 56,
              )),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    ShimmerBox(
                      height: 20,
                      width: context.width * 0.2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ShimmerBox(
                      height: 15,
                      width: context.width * 0.5,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 28,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 28,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
