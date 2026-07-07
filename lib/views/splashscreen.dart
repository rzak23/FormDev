import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/splashscreen_controller.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});
  final SplashscreenController controller = Get.put(SplashscreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 300, height: 300, child: Image.asset("assets/icon/formdev.png")),
            const SizedBox(
              width: 40,
              height: 40,
              child: LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [Colors.purple],
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
