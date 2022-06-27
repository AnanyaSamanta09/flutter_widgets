import 'package:flutter/material.dart';

class DeviceWidgetScreen extends StatelessWidget {
  const DeviceWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Stack widget screen'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height, //NOTE: it provides height/width according to the device
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center, //NOTE: aligns the children(box) in center
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
            ),
            Positioned(
              //left: 200,
              //bottom: 100,
              top: MediaQuery.of(context).size.height*0.297,
              child: Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
