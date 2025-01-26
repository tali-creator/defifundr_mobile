import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../global/constants/app_icons.dart';
import '../../global/constants/size.dart';
import '../../global/themes/color_scheme.dart';


class BaseBottomSheet extends StatelessWidget {

  final List<Widget> items;
  final String title;

  const BaseBottomSheet({
    super.key,
    required this.items,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0)
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 20,
            ),
            child: Column(
              children: [
                VerticalMargin(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Text(
                      title ,
                      style: Config.h3(context).copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: SvgPicture.asset(
                        AppIcons.cancelRound,
                      ),
                    ),
                  ],
                ),
                VerticalMargin(30),
                Column(
                  children: items,
                ),
                VerticalMargin(30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
