import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:medical_app_mobile/components/colors.dart';

class DetailScreen extends StatefulWidget {
  //final TopRated physician;
  const DetailScreen({
    Key? key,
    //required this.physician,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = 0;
  int scheduleMonth = 0;
  List<String> month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  @override
  void initState() {
    super.initState();
    scheduleMonth = DateTime.now().month;
    selectedIndex = DateTime.now().day;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: size.height * .9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: size.width * .33,
                            bottom: 0,
                            child: Image.asset(
                              "assets/images/doctor3.png",
                              scale: 2,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * .07),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: size.height * .055,
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 33,
                                          margin: EdgeInsets.only(
                                            right: size.width * .25,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: const Color.fromARGB(
                                                255, 97, 103, 213),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_back,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "Details",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: size.height * .03),
                                const Text(
                                  "Dr. Jenny wilson",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: size.height * .015),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 97, 103, 213),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    const Text(
                                      "Dentist",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 207, 212, 216),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "4.9",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: ColorConstant.secondaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * .03),
                                const Text(
                                  "Visiting hour",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 207, 212, 216),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: size.height * .01),
                                const Text(
                                  "11 AM-12 PM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: size.height * .03),
                                const Text(
                                  "Total patients",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 207, 212, 216),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: size.height * .01),
                                const Text(
                                  "1200+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * .07),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              bottom: 10,
                            ),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: size.height * .02,
                            ),
                            child: const Text(
                              "A Dentist is a medical professional who specializes in dentistry, the diagnosis, and the treatment of diseases and conditions of tooth, This helps to prevent conplications...",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Schedule",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (scheduleMonth > 1) {
                                        setState(() {
                                          scheduleMonth--;
                                        });
                                      }
                                    },
                                    child: const Icon(
                                      Icons.arrow_back_ios,
                                      size: 15,
                                      color: ColorConstant.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    month[scheduleMonth == 0
                                        ? scheduleMonth
                                        : scheduleMonth - 1],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: ColorConstant.primaryColor),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (scheduleMonth <= 11) {
                                        setState(() {
                                          scheduleMonth++;
                                        });
                                      }
                                    },
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: ColorConstant.primaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * .02),
                            height: size.height * .055,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: daysInMonth(scheduleMonth),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index + 1;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 16),
                                    width: size.width * .108,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomLeft,
                                        colors: selectedIndex == index + 1
                                            ? [
                                                const Color.fromARGB(
                                                    255, 124, 128, 202),
                                                const Color.fromARGB(
                                                    255, 86, 91, 180),
                                                ColorConstant.primaryColor
                                              ]
                                            : [
                                                ColorConstant.secondaryColor,
                                                ColorConstant.secondaryColor,
                                                ColorConstant.secondaryColor
                                              ],
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          getDay(index + 1, scheduleMonth),
                                          style: TextStyle(
                                            color: selectedIndex == index + 1
                                                ? const Color.fromARGB(
                                                    255, 207, 212, 216)
                                                : Colors.black54,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "${index + 1}",
                                          style: TextStyle(
                                            color: selectedIndex == index + 1
                                                ? Colors.white
                                                : ColorConstant.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: size.width * .07),
              height: size.height * .07,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: ColorConstant.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Book an Appointment",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
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

String getDay(int day, int month) {
  var now = DateTime.now();
  DateTime getDate = DateTime(now.year, month, day);
  String date = DateFormat("EEEE").format(getDate);
  return date.substring(0, 3);
}

int daysInMonth(int month) {
  DateTime now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(now.year, month + 1, 0);
  return lastDayOfMonth.day;
}
