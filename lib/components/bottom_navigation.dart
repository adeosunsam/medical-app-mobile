import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app_mobile/components/colors.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

final List<String> _bottomNav = ['home', 'heart', 'cart', 'user'];

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: size.width * .07,
        right: size.width * .07,
        bottom: 7,
        top: 5,
      ),
      width: double.infinity,
      height: size.height * .08,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: BottomNavigationBar(
          iconSize: 12,
          currentIndex: 0,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorConstant.secondaryColor,
          backgroundColor: ColorConstant.black,
          type: BottomNavigationBarType.fixed,
          items: _bottomNav
              .map(
                (e) => BottomNavigationBarItem(
                  label: e,
                  icon: SvgPicture.asset(
                    'assets/icons/$e.svg',
                    color: ColorConstant.secondaryColor,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
