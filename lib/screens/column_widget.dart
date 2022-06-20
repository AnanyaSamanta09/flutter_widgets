import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exploring Column Widget"),centerTitle: true,
          backgroundColor: Colors.black),
      body: SingleChildScrollView( //SingleChildSCrollView() is used for making the screen scroll view
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
            Text('Ananya',style: TextStyle(fontSize: 30),),
            Text('Puja',style: TextStyle(fontSize: 30),),
            Text('Aperna',style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
