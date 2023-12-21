import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/view/first/home-view/home.view.dart';
import 'package:web_ui_chal/view/second/home-page/home.page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 40,
        runSpacing: 60,
        children: [
          _Item(
            title: "first",
            color: Colors.cyan,
            onpressed: () => Get.to(
              () => const HomeView(),
            ),
          ),
          _Item(
            title: "second",
            color: Colors.yellow,
            onpressed: () => Get.to(
              () => const SecondHomePage(),
            ),
          )
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String title;
  final Color color;
  final Function() onpressed;
  const _Item(
      {required this.title, required this.color, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: 100.h,
        height: 100.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: DefaultTextStyle(
                style:  TextStyle(fontSize: 5.sp), child: Text(title))),
      ),
    );
  }
}
