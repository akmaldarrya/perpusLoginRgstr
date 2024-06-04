import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_signup/utils/global.color.dart';
import 'package:login_signup/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(loginView());
    });
    return Scaffold(
      backgroundColor: GlobalCOlors.buttonColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/splash.png'),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}