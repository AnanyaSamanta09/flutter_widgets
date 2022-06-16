import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //NOTE : Title parameter can take any widget
          title: Text("My App"),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          leading: Icon(
            Icons.arrow_back,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Icon tapped');
                })
          ],
          backgroundColor: Colors.black),
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Text('Ananya',style: TextStyle(fontSize: 20),),
      //     Container(height: 150,width: 60,color: Colors.blue,),
      //     Text('Aperna',style: TextStyle(fontSize: 20)),
      //   ],
      // ),
    );
  }
}
// NOTE : CrossAxisAlignment in a row works with respect to the largest element present in the children list
