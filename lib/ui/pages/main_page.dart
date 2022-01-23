import 'package:flutter/material.dart';
import 'package:travely/shared/theme.dart';
import 'package:travely/ui/pages/bookmark_page.dart';
import 'package:travely/ui/pages/home_page.dart';
import 'package:travely/ui/pages/map_page.dart';
import 'package:travely/ui/pages/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  Widget customBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                size: 26,
                color: currentIndex == 0 ? blackColor : greyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.map,
                size: 26,
                color: currentIndex == 1 ? blackColor : greyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.bookmark,
                size: 26,
                color: currentIndex == 2 ? blackColor : greyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.settings,
                size: 26,
                color: currentIndex == 3 ? blackColor : greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const MapPage();

      case 2:
        return const BookmarkPage();

      case 3:
        return const UserPage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: customBottomNavBar(),
      body: body(),
    );
  }
}
