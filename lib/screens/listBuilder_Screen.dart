import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  customUI() {
    return Container(
      height: 34,
      color: Colors.blue.shade300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: customUI(),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
