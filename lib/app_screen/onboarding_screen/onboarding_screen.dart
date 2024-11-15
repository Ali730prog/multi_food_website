import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';
import 'package:stylish/app_screen/get_started/get_started.dart';
import 'package:stylish/app_screen/login_screen/login_screen.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'title': 'Choose Products',
      'body': 'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.',
      'image': "${AppAssets.onbaording_screen_1}"
    },
    {
      'title': 'Make Payment',
      'body': 'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.',
      'image': "${AppAssets.onbaording_screen_2}"
    },
    {
      'title': 'Get Your Order',
      'body': 'Amet minim mollit non deserunt ullamco \nest sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit..',
      'image': "${AppAssets.onbaording_screen_3}"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              final page = _pages[index];
              return _buildPage(page);
            },
          ),
          Positioned(
            top: h*.1/3,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child:
                  Row(
                     children: [
                       Text(
                         '${_currentPage + 1}/',
                         style: TextStyle(
                           fontSize: w*0.10/02,
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),
                       ),     Text(
                         '${_pages.length}',
                         style: TextStyle(
                           fontSize: w*0.10/02,
                           fontWeight: FontWeight.w500,
                           color:AppColor.greyA0A0A1,
                         ),
                       ),
                     ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    _skipOnboarding(context);
                  },
                  child: Text('Skip',style: GoogleFonts.montserrat(
                    color: AppColor.balck000000,fontWeight: FontWeight.w500, fontSize: w*0.10/02,
                  ),),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: h*0.4/4,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pages.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: _currentPage == index ? 50 : 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? AppColor.balck000000 : Colors.grey,
                      borderRadius: BorderRadius.circular(_currentPage == index ? 8 : 6),
                    ),
                  ),
                );
              }),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > -1)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text('Pre',style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,fontSize: 18,color: AppColor.greyC4C4C4
                    ),),
                  ),
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage == _pages.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => GetStarted()),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(_currentPage == _pages.length - 1 ? 'Finish' : 'Next',style: GoogleFonts.montserrat(
                    color: AppColor.redF83758,fontSize: 18,fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildPage(Map<String, String> page) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(page['image']!, height: 250), // Display image
        SizedBox(height: 20),
        Text(
          page['title']!,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          page['body']!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );}

  void _skipOnboarding(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }
}

