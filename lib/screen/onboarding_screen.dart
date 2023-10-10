import 'package:flutter/material.dart';
import 'package:travee/model/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 20, // Lebar lingkaran utama
      height: 20, // Tinggi lingkaran utama
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 20, // Lebar lingkaran border
            height: 20, // Tinggi lingkaran border
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, // Warna border
                width: 2, // Lebar border
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: _currentPage == index ? 20 : 10, // Lebar lingkaran putih
            height: _currentPage == index ? 20 : 10, // Tinggi lingkaran putih
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Warna lingkaran putih
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: contents[_currentPage].backgroundColor),
        child: Stack(children: [
          PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemCount: contents.length,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        contents[i].image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 64,
                            ),
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              "Let's start here",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            _currentPage + 1 == contents.length
                                ? Container(
                              height: 72,
                                  width: 111,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Start"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: contents[i].btnColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                )
                                : Container(
                                    width: 72.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: contents[i].btnColor,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: IconButton(
                                        iconSize: 24.0,
                                        icon: Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            curve: Curves.easeIn,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ]),
      ),
    );
  }
}
