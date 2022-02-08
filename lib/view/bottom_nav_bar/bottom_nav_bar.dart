import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/home/home.dart';
import 'package:rchive/view/investment_portal/investment_portal.dart';
import 'package:rchive/view/profile/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  List<Widget> screens = const [
    Home(),
    InvestmentPortal(),
    SizedBox(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        backgroundColor: kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kSecondaryColor,
        unselectedItemColor: kLightGreyColor,
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              currentIndex == 0
                  ? 'assets/images/home_after.png'
                  : 'assets/images/home.png',
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentIndex == 1
                  ? 'assets/images/portal_after.png'
                  : 'assets/images/portal_before.png',
              height: 26,
            ),
            label: 'Portal',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/notification_before.png',
              color: currentIndex == 2 ? kSecondaryColor : kLightGreyColor,
              height: 21,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile_before.png',
              color: currentIndex == 3 ? kSecondaryColor : kLightGreyColor,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
