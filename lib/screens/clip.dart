import 'package:flutter/material.dart';

class Clip extends StatelessWidget {
  const Clip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //NOTE : ClipRRect() is used to give border radius
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.network(
                'https://i0.wp.com/accidentaltravelwriter.com/wp-content/uploads/2017/12/korea-pyeongchang-night-view-credit-korea-net.jpg?fit=1024%2C683&ssl=1',
            height: 300,
              width: 350,
              fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
}
