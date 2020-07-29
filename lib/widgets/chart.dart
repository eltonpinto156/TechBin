import 'package:flutter/material.dart';
import 'package:tech_bin/widgets/rewardAnimation.dart';
// import 'package:tech_bin/rewards.dart';

// ignore: must_be_immutable
class Chart extends StatefulWidget {
  Chart({this.collection});
  int collection;
  @override
  ChartState createState() => new ChartState();
}

class ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_statements
    widget.collection == null ? widget.collection = 0 : null;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Card(
              elevation: 3,
              // margin:EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(58.0),
                child: Text(
                  "Waste thrown is\n ${widget.collection} kgs",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,
              ),
              color: Colors.blue,
              child: Text(
                "You\'ve won a Reward!!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RewardAnimation(),
                  ),
                )
              },
            ),
          )
        ],
      ),
    );
  }
}
