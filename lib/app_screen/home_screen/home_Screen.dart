import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stylish/app_component/bold_text.dart';
import 'package:stylish/app_component/common_text_field.dart';
import 'package:stylish/app_component/light_text.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final CarouselController _carouselController = CarouselController();
  int selectedIndex = 0; // Track selected index for the carousel

  List<String> slider_images = [
    "${AppAssets.slider_image_1}",
    "${AppAssets.slider_image_2}",
    "${AppAssets.slider_image_3}",
  ];

  List<String> category = [
    "Beauty",
    "Fashion",
    "Kids",
    "Men",
    "Women",
  ];

  List<String> category_Images = [
    AppAssets.beauty,
    "${AppAssets.fashion}",
    AppAssets.kids,
    AppAssets.men,
    AppAssets.women,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 10.0),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            color: AppColor.whiteFFFFFF,
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            "${AppAssets.menu}",
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      Container(
                        width: 112,
                        height: 32,
                        child: Center(child: Image.asset("${AppAssets.app_logo}")),
                      ),
                      SizedBox(width: 56),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("${AppAssets.ali}"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                CommonTextField(
                  controller: searchController,
                  prefixIcon: "${AppAssets.search}",
                  hintText: "Search any Product..",
                  bg_color: AppColor.whiteFFFFFF,
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoldText(
                      text: "All Featured",
                      fontsize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(width: 49),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.whiteFFFFFF,
                          borderRadius: BorderRadius.circular(8)),
                      width: 61,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LightText(
                            text: "Sort",
                            fontWeight: FontWeight.w400,
                            fontsize: 16,
                            textColor: AppColor.balck000000,
                          ),
                          Image.asset(
                            "${AppAssets.arrow}",
                            width: 16,
                            height: 16,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.whiteFFFFFF,
                          borderRadius: BorderRadius.circular(8)),
                      width: 70,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LightText(
                            text: "Filter",
                            fontWeight: FontWeight.w400,
                            fontsize: 16,
                            textColor: AppColor.balck000000,
                          ),
                          Image.asset(
                            "${AppAssets.filter}",
                            width: 16,
                            height: 16,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.whiteFFFFFF,
                      borderRadius: BorderRadius.circular(10)),
                  width: 539.0,
                  height: 110.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                AssetImage(category_Images[index]),
                              ),
                              SizedBox(height: 10),
                              LightText(
                                text: category[index],
                                fontWeight: FontWeight.w500,
                                fontsize: 10,
                                textColor: AppColor.blue21003D,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 16),
                Container(
                  child: CarouselSlider(
                    // carouselController: _carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayCurve: Curves.easeInOut,
                      onPageChanged: (index, reason) {
                        setState(() {
                          selectedIndex = index; // Update selected index when page changes
                        });
                      },
                    ),
                    items: slider_images
                        .map((item) => Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 400,
                      height: 129,
                      decoration: BoxDecoration(),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(item,
                              fit: BoxFit.fill, width: 340, height: 160),
                        ),
                      ),
                    ))
                        .toList(),
                  ),
                ),
                SizedBox(height: 20),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: List.generate(
                //     slider_images.length,
                //         (index) {
                //       return Padding(
                //         padding: const EdgeInsets.all(4.0),
                //         child: GestureDetector(
                //           onTap: () {
                //             _carouselController.jumpToPage(index);
                //             setState(() {
                //               selectedIndex = index; // Update the selected index
                //             });
                //           },
                //           child: CircleAvatar(
                //             radius: 6,
                //             backgroundColor: selectedIndex == index
                //                 ? Colors.blue // Color when selected
                //                 : Colors.black, // Color when unselected
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
