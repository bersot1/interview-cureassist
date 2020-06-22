import 'package:cureassist/model/justForYouModel.dart';
import 'package:cureassist/model/talkToExpertsAtModel.dart';
import 'package:cureassist/widget/justForYouWidget.dart';
import 'package:cureassist/widget/serviceCardWidget.dart';
import 'package:cureassist/widget/talkToExpertsAtWidget.dart';
import 'package:cureassist/widget/titleCureAssist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<JustForYouModel> aux = [
    JustForYouModel(
      message: "Lab test at \n 10% Discount",
      color: Colors.blue[200],
      icon: Icons.healing,
    ),
    JustForYouModel(
      message: "First Health \n Checkup free",
      color: Colors.green[200],
      icon: Icons.check,
    )
  ];

  List<TalkToExpertsModel> auxTalkToExperts = [
    TalkToExpertsModel(
        message: "Cleneagles",
        icon: Icons.local_hospital,
        iconColor: Colors.blue[100]),
    TalkToExpertsModel(
      message: "Fortis",
      icon: Icons.local_hospital,
      iconColor: Colors.green,
    ),
    TalkToExpertsModel(
        message: "Vikram",
        icon: Icons.local_hospital,
        iconColor: Colors.green[100]),
    TalkToExpertsModel(
      message: "Apollo",
      icon: Icons.local_hospital,
      iconColor: Colors.purple,
    ),
    TalkToExpertsModel(
      message: "Vikram",
      icon: Icons.local_hospital,
      iconColor: Colors.purple,
    ),
    TalkToExpertsModel(
      message: "Solutinos",
      icon: Icons.local_hospital,
      iconColor: Colors.purple,
    ),
    TalkToExpertsModel(
      message: "Apollo",
      icon: Icons.local_hospital,
      iconColor: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CureTitle(
              message: "JUST FOR YOU",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: aux.length,
                itemBuilder: (context, index) {
                  return JustForYou(
                    content: aux[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CureTitle(
              message: "SERVICE",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceCard(
                    message: "Talk To doctor",
                    icon: Icons.phone_in_talk,
                    iconColor: Colors.blue,
                    func: () {}),
                ServiceCard(
                  message: "Lab Test",
                  icon: Icons.receipt,
                  iconColor: Colors.red,
                  func: () {},
                ),
                ServiceCard(
                    message: "Lab Packages",
                    icon: Icons.library_books,
                    iconColor: Colors.blue[100],
                    func: () {}),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceCard(
                  message: "Physiotherapy",
                  icon: Icons.photo_filter,
                  iconColor: Colors.orange,
                  func: () {},
                ),
                ServiceCard(
                  message: "Favourites Doctors",
                  icon: Icons.favorite,
                  iconColor: Colors.green,
                  func: () {},
                ),
                ServiceCard(
                  message: "Care at Home",
                  icon: Icons.home,
                  iconColor: Colors.purple,
                  func: () {},
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.blue[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CureTitle(
                    message: "TALK TO EXPERTS AT",
                  ),
                  Container(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: auxTalkToExperts.length,
                      itemBuilder: (context, index) {
                        return TalkToExpertAtCard(
                          message: auxTalkToExperts[index].message,
                          icon: auxTalkToExperts[index].icon,
                          iconColor: auxTalkToExperts[index].iconColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CureTitle(
              message: "RECENT CONSULTS",
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                              image: NetworkImage("https://i.pravatar.cc/100"),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 35,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                            ),
                            child: Icon(
                              Icons.check,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
