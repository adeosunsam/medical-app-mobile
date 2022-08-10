import 'package:flutter/material.dart';
import 'package:medical_app_mobile/components/colors.dart';
import 'package:medical_app_mobile/components/top_rated_doctor.dart';

Widget topRated(Size size, TopRated doctorInfo) {
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
                doctorInfo.image,
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
                  doctorInfo.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  doctorInfo.profession,
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
                      doctorInfo.rating,
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
                      doctorInfo.scheduleTime,
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

Widget categoryBuilder(Size size, String name) {
  return Container(
    width: size.width * .35,
    margin: EdgeInsets.only(right: size.width * 0.03),
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
          name,
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

Widget categoryName(Size size, String title) {
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

Widget appointmentDetails(Size size, String text, IconData icon) {
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
