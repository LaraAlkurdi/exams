import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/main_view/home_view/home_controller.dart';
import 'package:impty_project/ui/views/main_view/home_view/slider_image.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight(70), horizontal: screenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight(6),
            ),
            CustomTextField(
              hintext: 'بحث',
              colorText: AppColors.mainTextsColor,
              prefixImage: 'ic_search',
            ),
            Sliderimage(),
            CustomText(
                text: 'التصنيفات',
                textColor: AppColors.mainTextsColor,
                textsize: screenWidth(20)),
            Obx(() {
              return controller.isCategoryLoading
                  ? SpinKitCircle(
                      color: AppColors.mainOrangeColor,
                    )
                  : Container(
                      // color: AppColors.mainGreyColor,
                      height: screenHeight(17),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categoriesList.length,
                        itemBuilder: (BuildContext context, index) {
                          return InkWell(
                            onTap: () {
                              controller.selectCategory(index);
                            },
                            child: Obx(
                              () => Container(
                                margin: EdgeInsets.only(right: screenWidth(20)),
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight(5),
                                  horizontal: screenWidth(10),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      controller.selectedCategory.value == index
                                          ? AppColors.mainBlueColor
                                          : AppColors.transparentColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: CustomText(
                                    text: controller.categoriesList[index],
                                    textColor: Colors.black,
                                    textsize: screenWidth(30)),
                              ),
                            ),
                          );
                        },
                      ),
                    );
            }),
          ],
        ));
  }
}
