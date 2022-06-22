import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, //NOTE: it is used for no. of child,i.e.,row
        mainAxisSpacing: 6.0, //NOTE: it is used for row spacing
        crossAxisSpacing: 6.0,//NOTE: it is used for column spacing
        childAspectRatio: 2.8   //NOTE: with the increasing of childAspectRatio, the height of the child decreases
      ), itemBuilder: (context,index){
        return Container(
          color: Colors.green,
        );

      },itemCount: 20,
      ),
    );
  }
}
