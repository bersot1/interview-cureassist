import 'package:flutter/material.dart';

class TalkToExpertAtCard extends StatelessWidget {
  IconData icon;
  String message;
  Color iconColor;

  TalkToExpertAtCard({
    @required this.icon,
    @required this.message,
    @required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          FlatButton(
            onPressed: () {},
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          Text(message)
        ],
      ),
    );
  }
}
