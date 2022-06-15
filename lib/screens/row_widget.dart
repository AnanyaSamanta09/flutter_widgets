import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exploring Row Widget"),centerTitle: true,
          backgroundColor: Colors.black),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ananya',style: TextStyle(fontSize: 20),),
          Text('Puja',style: TextStyle(fontSize: 20)),
          Text('Aperna',style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
