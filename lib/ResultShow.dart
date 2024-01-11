import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {

  BMIResult({required this.result, required this.comment, required this.score});

  final String result,comment,score;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Result"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Your Result",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                color: Colors.black45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        result,
                        style: TextStyle(fontSize: 25, color: Colors.green, ),
                      ),
                    ),
                    Center(child: Text(score.toString(), style: TextStyle(fontSize: 80,fontWeight:FontWeight.w600))),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
                        child: Text(
                          comment,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {
                  Navigator.pop (context);
                },
                child: Text(
                  "Recalculate",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
