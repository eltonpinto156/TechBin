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
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Congratulations !!\nYou have earned a reward',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RewardAnimation(),
                  ),
                )
              },
              child: Icon(
                Icons.arrow_forward_ios,
                size: 60,
              ),
            ),
          ),
          Text(
            'Tap here to see the reward !! ',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
