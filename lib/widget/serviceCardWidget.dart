import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  String message;
  IconData icon;
  Color iconColor;
  Function func;

  ServiceCard({
    @required this.message,
    @required this.icon,
    @required this.iconColor,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        FlatButton(
          onPressed: func,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Text(message)
      ],
    ));
  }
}
