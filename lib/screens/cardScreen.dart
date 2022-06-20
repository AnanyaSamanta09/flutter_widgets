import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10, //NOTE: it is used for shadow
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(   //NOTE : Padding is used for margin
          padding: const EdgeInsets.all(8.0),
          child: Text("ANANYA"),
        ),
        color: Colors.redAccent,
      ),
      appBar: AppBar(
          //NOTE : Title parameter can take any widget
          title: Text("CARD"),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black),
    );
  }
}
