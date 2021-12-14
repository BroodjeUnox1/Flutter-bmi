import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({this.gender, this.genderText});
  final gender;
  final genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            genderText,
            style: TextStyle(fontSize: 18,
                color: Color(0xFF8D8E98)
            )
        )
      ],
    );
  }
}