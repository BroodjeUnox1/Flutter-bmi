import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {@required this.colour, this.cardchild}
      );

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
        height: 170,
        margin: EdgeInsets.all(11.0),
        child: cardchild,
      ),
    );
  }
}