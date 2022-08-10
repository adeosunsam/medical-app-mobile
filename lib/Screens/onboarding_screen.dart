import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_mobile/Screens/home_screen.dart';
import 'package:medical_app_mobile/components/colors.dart';
import 'package:medical_app_mobile/components/onboard_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: ColorConstant.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: ColorConstant.primaryColor,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/nurse1.png",
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * .48,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(200, 70),
                    topRight: Radius.elliptical(200, 70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: size.height * .2,
                      child: PageView.builder(
                        controller: _controller,
                        itemCount: onboardText.length,
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * .18),
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                Text(
                                  onboardText[index].title,
                                  style: const TextStyle(
                                    color: ColorConstant.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  onboardText[index].text,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardText.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: size.width * .1),
                      height: size.height * .07,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: ColorConstant.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      height: 7,
      width: currentIndex == index ? 15 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? ColorConstant.primaryColor : Colors.grey,
      ),
    );
  }
}
