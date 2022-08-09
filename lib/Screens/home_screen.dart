import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_mobile/components/bottom_navigation.dart';
import 'package:medical_app_mobile/components/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = ["Dentist", "Heart Surgeon", "Bone Marrow"];

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
              categoryName("UpComming Appointment"),
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
                                  "Sep 18,2022",
                                  Icons.calendar_month_outlined,
                                ),
                                appointmentDetails(
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
                            Color.fromARGB(255, 106, 110, 197),
                            ColorConstant.primaryColor
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Icon(
                          Icons.dashboard_customize_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              categoryName("Category"),
              SizedBox(
                height: size.height * 0.055,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return categoryBuilder(index);
                  },
                ),
              ),
              categoryName("Top Rated Doctor"),
              topRated(
                "assets/images/nurse1.png",
                "Dr Ronald Richard",
                "Heart Surgeon",
                "4.5",
                "11 Am-03 Pm",
              ),
              topRated(
                "assets/images/doctor2.png",
                "Dr Jenny Wilson",
                "Dental Specialist",
                "4.9",
                "10 Am-12 Pm",
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigator(),
      ),
    );
  }

  Widget topRated(
    String image,
    String name,
    String profession,
    String rating,
    String scheduleTime,
  ) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * .07,
        vertical: size.height * .01,
      ),
      height: size.height * .11,
      decoration: BoxDecoration(
        color: ColorConstant.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * .095,
            width: size.width * .18,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 69, 69, 69),
                  Color.fromARGB(255, 54, 54, 54),
                  Color.fromARGB(115, 37, 37, 37),
                  Color.fromARGB(255, 69, 69, 69),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    profession,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.punch_clock,
                        color: Colors.blueAccent,
                        size: 17,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        scheduleTime,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryBuilder(int index) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .35,
      margin: EdgeInsets.only(left: size.width * 0.05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstant.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.heart_broken_sharp,
            color: Colors.red,
            size: 17,
          ),
          Text(
            category[index],
            style: const TextStyle(
              color: Color.fromARGB(255, 31, 33, 75),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryName(String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * .07,
        vertical: size.height * .017,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: ColorConstant.black,
            ),
          ),
          const Text(
            "See all",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget appointmentDetails(String text, IconData icon) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .33,
      height: size.height * .05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 88, 94, 214),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 17,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
