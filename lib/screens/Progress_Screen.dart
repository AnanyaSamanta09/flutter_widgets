import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.yellow,
              //color: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red), //NOTE: this represent the color of the value
             // value: 0.8, //NOTE: this value indicates how much progress has been done(ranging from 0.0 to 1.0
            ),
            SizedBox(
              width: 100,
              child: LinearProgressIndicator(
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
               // value: 0.8,
              ),
            )
          ],
        ),
      )
    );
  }
}
