import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_mobile/components/bottom_navigation.dart';
import 'package:medical_app_mobile/components/colors.dart';
import 'package:medical_app_mobile/components/slidable_widget.dart';
import 'package:medical_app_mobile/components/top_rated_doctor.dart';
import 'package:medical_app_mobile/widget/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = ["Dentist", "Heart Surgeon", "Bone Surgeon"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: size.height * .065,
                  bottom: size.height * .01,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * .2,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConstant.secondaryColor,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  "assets/images/doctor1.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Welcome back",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Nazmul",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 35,
                      margin: EdgeInsets.only(right: size.width * .07),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: ColorConstant.secondaryColor,
                      ),
                      child: const Icon(
                        Icons.menu,
                        color: Color.fromARGB(255, 123, 123, 123),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              categoryName(size, "UpComming Appointment"),
              SizedBox(
                height: size.height * .21,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 1,
                      left: size.width * .1,
                      height: size.height * .19,
                      width: size.width * .8,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Color.fromARGB(255, 164, 167, 231),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: size.width * .08,
                      height: size.height * .19,
                      width: size.width * .84,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Color.fromARGB(255, 118, 122, 209),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .19,
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * .07),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        color: ColorConstant.primaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: size.height * .06,
                                margin: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 15),
                                    SizedBox(
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorConstant.secondaryColor,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/doctor1.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Dr. Rahul Alom",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Tooth,Specialist",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: ColorConstant.secondaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                margin:
                                    EdgeInsets.only(right: size.width * .05),
                                child: const Icon(
                                  Icons.more_vert_rounded,
                                  color: ColorConstant.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: size.height * .028,
                              left: size.width * .03,
                              right: size.width * .1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                appointmentDetails(
                                  size,
                                  "Sep 18,2022",
                                  Icons.calendar_month_outlined,
                                ),
                                appointmentDetails(
                                  size,
                                  "(11 Am-03 Pm)",
                                  Icons.lock_clock,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * .02),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * .07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * .055,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstant.secondaryColor,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .05,
                      width: size.width * .105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 124, 128, 202),
                            Color.fromARGB(255, 86, 91, 180),
                            ColorConstant.primaryColor
                          ],
                        ),
                      ),
                      child: const Icon(
                        Icons.dashboard_customize_rounded,
                        color: ColorConstant.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              categoryName(size, "Category"),
              Container(
                height: size.height * 0.055,
                margin: EdgeInsets.only(left: size.width * .07),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return categoryBuilder(size, category[index]);
                  },
                ),
              ),
              categoryName(size, "Top Rated Doctor"),
              for (int i = 0; i < topRatedDoctor.length - 1; i++)
                SlidableWidget(child: topRated(context, topRatedDoctor[i]))
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigator(),
      ),
    );
  }
}
