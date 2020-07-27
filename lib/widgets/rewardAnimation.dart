import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tech_bin/widgets/rewards.dart';

class RewardAnimation extends StatefulWidget {
  @override
  _RewardAnimationState createState() => _RewardAnimationState();
}

class _RewardAnimationState extends State<RewardAnimation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Center(
    
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'You have earned\n${6}',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Lottie.asset('assets/animations/rewards.json'),
                width: 200,
                height: 200,
                ),

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
