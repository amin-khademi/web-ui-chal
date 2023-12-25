import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/core/core.dart';
import 'package:web_ui_chal/view/widget/second/FeaturedTiles.dart';
import 'package:web_ui_chal/view/widget/second/FloatingQuickAccessBar.dart';
import 'package:web_ui_chal/view/widget/second/carousel.dart';
import 'package:web_ui_chal/view/widget/second/feature.heading.dart';
import 'package:web_ui_chal/view/widget/second/main.heading.dart';
import 'package:web_ui_chal/view/widget/second/top.bar.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    double scrollPosition = 0;
    double opacity = 0;
    opacity = scrollPosition < Dimens.height * 0.40
        ? scrollPosition / (Dimens.height * 0.40)
        : 1;
    return Scaffold(
      appBar: _appBar(opacity),
      body: SingleChildScrollView(
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
                    const MainCarousel()
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