import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exploring Row Widget"),centerTitle: true,
          backgroundColor: Colors.black),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Ananya',style: TextStyle(fontSize: 20),),
          Container(height: 150,width: 60,color: Colors.blue,),
          Text('Aperna',style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
