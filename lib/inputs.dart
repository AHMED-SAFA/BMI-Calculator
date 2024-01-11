import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResultShow.dart';
import 'calculation.dart';

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}


const inact = Color(0xFFE1C16E);
const act = Color(0xFF6E260E);
class _InputPageState extends State<InputPage> {

  Color malecolor = inact;
  Color femalecolor = inact;
  int height = 180, weight = 80;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (malecolor == inact) {
                            femalecolor = inact;
                            malecolor = act;
                          } else
                            malecolor = inact;
                        });
                      },
                      child: Container(
                        height: 170,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 50,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        margin:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: malecolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (femalecolor == inact) {
                            malecolor = inact;
                            femalecolor = act;
                          } else
                            femalecolor = inact;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 50,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        margin:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          color: femalecolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 170,
                        width: 180,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Height", style: TextStyle(fontSize: 25)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(),
                                  style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold)),
                              Text("cm", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: Colors.pink,
                              overlayColor: Color(0x29EB1555),
                              thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: 100,
                                max: 220,
                                inactiveColor: Colors.grey,
                                onChanged: (double newval) {
                                  setState(() {
                                    height = newval.round();
                                  });
                                }),
                          ),
                        ],
                      ),
                      margin:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 170,
                      width: 180,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight", style: TextStyle(fontSize: 25)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(weight.toString(),
                                  style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold)),
                              Text("kg", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                    if (weight > 150) weight = 80;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                              SizedBox(width: 20),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                    if (weight < 10) weight = 80;
                                  });
                                },
                                child: Icon(
                                  Icons.minimize_rounded,
                                  size: 40,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      height: 170,
                      width: 180,
                      margin:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age", style: TextStyle(fontSize: 25)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(age.toString(),
                                  style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                    if (age > 120) age = 18;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                    if (age < 5) age = 18;
                                  });
                                },
                                child: Icon(
                                  Icons.minimize_rounded,
                                  size: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      margin:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 170,
                      width: 180,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: () {
                    Calc cl = Calc(weight: weight, height: height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResult(
                            result: cl.bmiresult(),
                            comment: cl.commmnts(),
                            score: cl.getValue()),
                      ),
                    );
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}