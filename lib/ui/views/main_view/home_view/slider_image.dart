import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/main_view/home_view/home_controller.dart';

class Sliderimage extends StatefulWidget {
  const Sliderimage({super.key});

  @override
  State<Sliderimage> createState() => _SliderimageState();
}

class _SliderimageState extends State<Sliderimage> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider(
        items: controller.images.map((image) {
          return SizedBox(
            width: screenWidth(2.5),
            child: SvgPicture.asset(image),
          );
        }).toList(),
        options: CarouselOptions(
          initialPage: controller.currentIndex.value,
          onPageChanged: (index, _) {
            controller.onPageChanged(index);
          },
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayInterval: Duration(seconds: 3),
          viewportFraction: 0.8,
          pauseAutoPlayOnTouch: true,
          pauseAutoPlayOnManualNavigate: true,
        ),
      ),
      Positioned(
        bottom: screenHeight(50),
        right: screenWidth(2.8),
        child: Obx(() {
          return DotsIndicator(
            dotsCount: controller.images.length,
            position: controller.currentIndex.toDouble(),
            decorator: DotsDecorator(
              size: Size(screenWidth(80), screenHeight(120)),
              color: AppColors.mainWhiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(
                    width: 1,
                    color: AppColors.mainTextColor,
                  )),
              activeColor: AppColors.mainPurpleColor,
              activeSize: Size.square(screenWidth(60)),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
          );
        }),
      ),
    ]);
  }
}
