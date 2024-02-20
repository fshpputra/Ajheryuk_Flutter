import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Container(
            height: 150,
            child: Image.asset(
              "assets/logo/Logo1.png",
              fit: BoxFit.contain,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text(
                "Email",
                style: TextStyle(color: Color(0xFF9D9FA0)),
              ),
              fillColor: Color(0xFFF6F7FA),
              border: InputBorder.none,
              filled: true,
            ),
          ),
          SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              label: Text(
                "Password",
                style: TextStyle(color: Color(0xFF9D9FA0)),
              ),
              fillColor: Color(0xFFF6F7FA),
              border: InputBorder.none,
              filled: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(Routes.HOME),
              child: Text(
                "Log in",
                style: TextStyle(color: Colors.white),
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
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text("Forgot Password?"),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 1,
                  color: Color(0xFF8C8C8C),
                ),
              ),
              Text(
                "or",
                style: TextStyle(
                  color: Color(0xFF8C8C8C),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 1,
                  color: Color(0xFF8C8C8C),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/facebook.png"),
                  SizedBox(width: 15),
                  Text(
                    "Log in with Facebook",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0082CD),
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/google.png"),
                  SizedBox(width: 15),
                  Text(
                    "Log in with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF6F7FA),
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 95),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  color: Color(0xFF8C8C8C),
                ),
              ),
              TextButton(
                onPressed: () => Get.toNamed(Routes.REGISTER),
                child: Text("Sign Up"),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
