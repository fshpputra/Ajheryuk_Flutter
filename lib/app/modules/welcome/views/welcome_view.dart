import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Image.asset(
                "assets/logo/Logo.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Welcome to Ajheryuk",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Best and popular apps for live education course from home",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF8C8C8C),
                ),
              ),
            SizedBox(height: 50),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN), 
                child: Text("Get Started", style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
