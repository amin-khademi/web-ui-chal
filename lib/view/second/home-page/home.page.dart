import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/core/core.dart';
import 'package:web_ui_chal/view/widget/second/FeaturedTiles.dart';
import 'package:web_ui_chal/view/widget/second/FloatingQuickAccessBar.dart';
import 'package:web_ui_chal/view/widget/second/bottom-bar.dart';
import 'package:web_ui_chal/view/widget/second/carousel.dart';
import 'package:web_ui_chal/view/widget/second/feature.heading.dart';
import 'package:web_ui_chal/view/widget/second/main.heading.dart';
import 'package:web_ui_chal/view/widget/second/menu.drawer.dart';
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
    var screenSize = MediaQuery.of(context).size;
    opacity = scrollPosition < screenSize.height * 0.40
        ? scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.blue),
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
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(opacity),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                screenSize.width < 800
                    ? Padding(
                      padding: const EdgeInsets.only(top:80),
                      child: SizedBox(
                          height: screenSize.height / 2.5,
                          width: screenSize.width,
                          child: Image.asset(
                            AppImages.imagesBackground,
                            fit: BoxFit.cover,
                          ),
                        ),
                    )
                    : SizedBox(
                        height: screenSize.height * 0.65,
                        width: screenSize.width,
                        child: Image.asset(
                          AppImages.imagesBackground,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                      height: screenSize.height / 10,
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
