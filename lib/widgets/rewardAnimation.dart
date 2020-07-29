import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tech_bin/widgets/rewards.dart';
import 'package:scratcher/scratcher.dart';
import 'dart:math' show Random;

class RewardAnimation extends StatefulWidget {
  @override
  _RewardAnimationState createState() => _RewardAnimationState();
}

class _RewardAnimationState extends State<RewardAnimation> {
  var randomizer = new Random();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Scratcher(
                  accuracy: ScratchAccuracy.low,
                  brushSize: 50,
                  image: Image.asset('assets/image/scratch.jpg'),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Lottie.asset('assets/animations/rewards.json'),
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(65.0),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment(0.0, 1.0),
                        child: Text(
                          'You have earned\n${randomizer.nextInt(25)}',
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Rewards(),
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
                'Tap here to go to reward section',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
