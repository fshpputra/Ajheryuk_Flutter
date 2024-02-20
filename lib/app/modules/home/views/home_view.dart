import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 75,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          width: 65,
                          height: 65,
                          "assets/images/Avatar-1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF4ED442),
                              border: Border.all(
                                color: Colors.white,
                                width: 4,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, Samuel!",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icons/award.png"),
                          SizedBox(width: 10),
                          Text(
                            "+1600 ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                          Text(
                            "Points",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 35,
                  height: 35,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          width: 65,
                          height: 65,
                          "assets/icons/notif.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFEC5F5F),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 15),
                StoryItem(image: "assets/images/avatar6.jpg"),
                StoryItem(image: "assets/images/avatar3.jpg"),
                StoryItem(image: "assets/images/avatar4.jpg"),
                StoryItem(image: "assets/images/avatar5.jpg"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "course of this week",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
              
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 15),
                Category(title: "All", status: true),
                Category(title: "UI/UX", status: false),
                Category(title: "Illustration", status: false),
                Category(title: "3D Animation", status: false),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        controller.current.value = index;
                      }),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Obx(
                          () => Container(
                            width: 20,
                            height: 8,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: controller.current.value == entry.key
                                  ? Color(0xFFEC5F5F)
                                  : Color(0xFFEEEEEE),
                            ),
                          ),
                        ));
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1708022799750-afbe4be26f73?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: status == true ? Color(0xFFEC5F5F) : Color(0xFFF6F7FA),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        title,
        style: TextStyle(
          color: status == true ? Colors.white : Colors.grey[500],
          fontSize: 17,
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 105,
      height: 105,
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFFEC5F5F),
                width: 5,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF4DC9D1),
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: Image.asset("assets/icons/vidio.png"),
            ),
          ),
        ],
      ),
    );
  }
}
