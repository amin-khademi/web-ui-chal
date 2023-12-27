import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/core/core.dart';
import 'package:web_ui_chal/view/widget/second/FeaturedTiles.dart';
import 'package:web_ui_chal/view/widget/second/FloatingQuickAccessBar.dart';
import 'package:web_ui_chal/view/widget/second/bottom-bar.dart';
import 'package:web_ui_chal/view/widget/second/carousel.dart';
import 'package:web_ui_chal/view/widget/second/feature.heading.dart';
import 'package:web_ui_chal/view/widget/second/main.heading.dart';
import 'package:web_ui_chal/view/widget/second/top.bar.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({super.key});

  @override
  State<SecondHomePage> createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  final ScrollController scrollController = ScrollController();
  double scrollPosition = 0;
  double opacity = 0;

  scrollListener() {
    setState(() {
      scrollPosition = scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    opacity = scrollPosition < Dimens.height * 0.40
        ? scrollPosition / (Dimens.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Dimens.width < 800
          ? AppBar(
              backgroundColor: Colors.white.withOpacity(opacity),
              elevation: 0,
              title: const Text(
                'Author',
                style: TextStyle(
                  color: Color(0xFF077bd7),
                  fontSize: 26,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(Dimens.width, 70),
              child: TopBarContents(opacity),
            ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                _svgBackground(),
                Column(
                  children: [
                    FloatingQuickAccessBar(
                      screenSize: Get.size,
                    ),
                    FeaturedHeading(screenSize: Get.size),
                    FeaturedTiles(screenSize: Get.size),
                    MainHeading(screenSize: Get.size),
                    const MainCarousel(),
                    SizedBox(
                      height: Dimens.height / 10,
                    ),
                    const BottomBar()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

SizedBox _svgBackground() {
  return SizedBox(
    height: Dimens.height * 0.65,
    width: Dimens.width,
    child: Image.asset(
      AppImages.imagesBackground,
      fit: BoxFit.cover,
    ),
  );
}
