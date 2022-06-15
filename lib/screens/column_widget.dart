import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exploring Column Widget"),centerTitle: true,
          backgroundColor: Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ananya',style: TextStyle(fontSize: 20),),
          Text('Puja',style: TextStyle(fontSize: 20),),
          Text('Aperna',style: TextStyle(fontSize: 20)),
        ],
      ),
    );;
  }
}
