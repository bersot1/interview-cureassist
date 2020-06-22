import 'package:cureassist/pages/fourthPage.dart';
import 'package:cureassist/pages/secondpage.dart';
import 'package:cureassist/pages/thirdPage.dart';
import 'package:cureassist/pages/homepage.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(vsync: this, length: 4, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          HomePage(),
          SecondePage(),
          ThirdPage(),
          FourthPage(),
        ],
      ),
      bottomNavigationBar: bottomNavBar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.blue,
          child: Icon(Icons.healing)),
    );
  }

  Widget bottomNavBar(BuildContext context) {
    return BottomAppBar(
      elevation: 12.0,
      color: Colors.white,
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            tabIcon(0, true, Icons.home, Icons.home),
            tabIcon(1, false, Icons.chat, Icons.chat),
            SizedBox(width: 20),
            tabIcon(
                2, false, Icons.confirmation_number, Icons.confirmation_number),
            tabIcon(3, false, Icons.supervised_user_circle,
                Icons.supervised_user_circle),
          ],
        ),
      ),
    );
  }

  Widget tabIcon(
      int index, bool selected, IconData icon, IconData iconSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
          tabController.index = currentIndex;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            child: currentIndex == index
                ? Icon(icon, color: Colors.blue, size: 25)
                : Icon(iconSelected, color: Colors.black38, size: 25),
          )
        ],
      ),
    );
  }
}
