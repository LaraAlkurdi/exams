import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:impty_project/core/enums/bottum_navigation.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';

class BottomNavigationWidget extends StatefulWidget {
  final BottomNavigationEnum bottomNavigationEnum;
  final Function(BottomNavigationEnum, int) onTap;
  BottomNavigationWidget(
      {Key? key, required this.bottomNavigationEnum, required this.onTap})
      : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.mainWhiteColor,
          ),
          height: screenHeight(10),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navItem(
                  imageName: 'ic_profile',
                  isSelected: widget.bottomNavigationEnum ==
                      BottomNavigationEnum.PROFILE,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.PROFILE, 3);
                  },
                ),
                navItem(
                  imageName: 'ic_star',
                  isSelected:
                      widget.bottomNavigationEnum == BottomNavigationEnum.STAR,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.STAR, 2);
                  },
                ),
                navItem(
                  imageName: 'ic_home',
                  isSelected:
                      widget.bottomNavigationEnum == BottomNavigationEnum.HOME,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.HOME, 1);
                  },
                ),
                navItem(
                  imageName: 'ic_notification',
                  isSelected: widget.bottomNavigationEnum ==
                      BottomNavigationEnum.NOTIFICATION,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.NOTIFICATION, 0);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget navItem({
    required String imageName,
    required bool isSelected,
    required Function onTap,
  }) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/$imageName.svg',
            width: screenWidth(18),
            color: AppColors.mainPurpleColor,
          ),
          SizedBox(
            height: screenHeight(90),
          ),
          if (isSelected)
            Container(
              width: screenWidth(8),
              height: screenHeight(250),
              color: AppColors.mainPurpleColor,
            ),
        ],
      ),
    );
  }
}
