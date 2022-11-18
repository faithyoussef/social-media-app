import 'package:flutter/material.dart';
import 'package:mmp/widgets/widgets/home.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

import '../Screen/Notifications/notification.dart';
import '../Screen/chatroom.dart';
import '../Screen/profile.dart';
import '../Screen/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(1.0.h),
              child:  Home(),
            ),
          ),
        ],
      ),
    );
  }
}



class customNavBar extends StatefulWidget {
  const customNavBar({Key? key}) : super(key: key);

  @override
  State<customNavBar> createState() => _customNavBarState();
}

class _customNavBarState extends State<customNavBar> {
  int selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  static List<Widget> pages = [
    Home(),
    chatroom(),
    NotificationPage(),
    settings(),
    FbCloneProfileStful(),

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xffDA165E),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.comment_notes),
              label: 'notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.setting),
              label: 'settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.map),
              label: 'more',
            ),
          ],
        ),
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}



class record extends StatefulWidget {
  const record({Key? key}) : super(key: key);

  @override
  State<record> createState() => _recordState();
}

class _recordState extends State<record> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(itemExtent: 2, children: [
      Container(
        child: Image (image: AssetImage("assetsm1.jpg/"),
        ),
      ),
      Divider(
        thickness: 10,
        color: Colors.black,
      ),
      Container(
    child: Image (image: AssetImage("assetsw1.jpg/"),
       ),
      ),
      Divider(
        thickness: 10,
        color: Colors.black,
      ),
    ]);
  }
}
