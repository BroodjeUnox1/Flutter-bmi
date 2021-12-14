import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'cardConten.dart';

const CardActive = Color(0xFF272A4E);
const CardDeactive = Color(0xff141A3C);
var weight = 60;
var age = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double _currentSliderValue = 20;
  Color maleCardColor = CardDeactive;
  Color femaleCardColor = CardDeactive;



  // 1 male, 2 female
  void updateColour(int gender) {
    if (gender == 1) {
      maleCardColor == CardDeactive
          ? maleCardColor = CardActive
          : maleCardColor = CardDeactive;
    } else if (gender == 2) {
      femaleCardColor == CardDeactive
          ? femaleCardColor = CardActive
          : femaleCardColor = CardDeactive;
    }
  }

  void add(int selector) {
    if(selector == 1){
      weight += 1;
    }else {
      age += 1;
    }
  }

  void remove(int selector) {
    if(selector == 1){
      weight -= 1;
    }else {
      age -= 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    colour: maleCardColor,
                    cardchild: GestureDetector(
                      onTap: () {setState(() {updateColour(1);});},
                      child: CardContent(
                        genderText: "MALE",
                        gender: Icons.male,
                      ),
                    ),
                  ),
                  ReusableCard(
                    colour: femaleCardColor,
                    cardchild: GestureDetector(
                      onTap: () {setState(() {updateColour(2);});},
                      child: CardContent(
                        genderText: "FEMALE",
                        gender: Icons.female,
                      ),
                    )
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: CardDeactive,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 170,
                    margin: EdgeInsets.fromLTRB(11, 0, 11, 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "HEIGHT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8D8E98)
                            )
                        ),
                        Text(
                            _currentSliderValue.round().toString() + "cm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            )
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SliderTheme(
                            data: SliderThemeData(
                                thumbColor: Color(0xFFFF0067),
                                activeTrackColor: Colors.white
                            ),
                            child: Slider(
                              value: _currentSliderValue,
                              min: 0,
                              max: 250,
                              divisions: 250,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: CardDeactive,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 170,
                    margin: EdgeInsets.all(11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "WEIGHT",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF8D8E98))
                        ),
                        Text(
                            weight.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {setState(() {add(1);});},
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                                onPressed: () {setState(() {remove(1);});},
                                child: Icon(Icons.remove)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: CardDeactive,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 170,
                    margin: EdgeInsets.all(11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "AGE",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF8D8E98))
                        ),
                        Text(
                            age.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {setState(() {add(2);});},
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                                onPressed: () {setState(() {remove(2);});},
                                child: Icon(Icons.remove)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFF0067),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 80,
                    margin: EdgeInsets.fromLTRB(11, 11, 11, 50),
                    child: Text(
                        "test"
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}

