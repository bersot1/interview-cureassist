import 'package:flutter/material.dart';

class CureTitle extends StatelessWidget {
  String message;

  CureTitle({
    @required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        message,
        style: TextStyle(
            fontFamily: "Roboto-Regular",
            fontWeight: FontWeight.bold,
            fontSize: 17),
      ),
    );
  }
}
