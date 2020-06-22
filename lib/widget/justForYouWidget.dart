import 'package:cureassist/model/justForYouModel.dart';
import 'package:flutter/material.dart';

class JustForYou extends StatelessWidget {
  JustForYouModel content;

  JustForYou({
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: content.color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(content.message),
            Icon(content.icon),
          ],
        ),
      ),
    );
  }
}
