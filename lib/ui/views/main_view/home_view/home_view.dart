import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SvgPicture.asset(
          //   'assets/images/shapeMaker.svg',
          //   height: screenHeight(5.47),
          // ),
        ],
      ),
    );
  }
}
