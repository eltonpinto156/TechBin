import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_bin/widgets/rewardAnimation.dart';

startTime(BuildContext ctx) async {
  var duration = new Duration(seconds: 5);
  return new Timer(
      duration,
      () => {
            Navigator.push(
              ctx,
              MaterialPageRoute(
                builder: (ctx) => RewardAnimation(),
              ),
            ),
          });
}

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    startTime(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(
                'Your have Earned\n${index * 7 + 6}',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
