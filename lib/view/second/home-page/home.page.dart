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
      appBar: _appBar(opacity),
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
                    SizedBox(height: Dimens.height/10,),
                    BottomBar()
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

PreferredSize _appBar(double opacity) {
  return PreferredSize(
    preferredSize: Size(Dimens.width, 70),
    child: TopBarContents(opacity),
  );
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
