import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_ui_chal/view/home-view/home.view.dart';

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
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: DefaultTextStyle(
                style: const TextStyle(fontSize: 30), child: Text(title))),
      ),
    );
  }
}
