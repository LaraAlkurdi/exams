import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/utils.dart';

class AboutAsView extends StatefulWidget {
  const AboutAsView({super.key});

  @override
  State<AboutAsView> createState() => _AboutAsViewState();
}

class _AboutAsViewState extends State<AboutAsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomImages(
          imageName: 'shapeMaker',
          imageSize: screenHeight(4),
        ),
        SizedBox(
          height: screenHeight(40),
        ),
        CustomImages(
          imageName: 'pana',
          imageSize: screenHeight(4.5),
        ),
      ],
    ));
  }
}
