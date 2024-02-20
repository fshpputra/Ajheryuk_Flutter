import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
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
                "Fullname",
                style: TextStyle(color: Color(0xFF9D9FA0)),
              ),
              fillColor: Color(0xFFF6F7FA),
              border: InputBorder.none,
              filled: true,
            ),
          ),
          SizedBox(height: 15),
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
              onPressed: () {},
              child: Text(
                "Sign Up",
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
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "By signing up you accept the Terms of Service",
                  style: TextStyle(
                  color: Color(0xFF8C8C8C),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "and Privacy Policy",
                  style: TextStyle(
                  color: Color(0xFF8C8C8C),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
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
                onPressed: () => Get.toNamed(Routes.LOGIN),
                child: Text("Log in"),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
