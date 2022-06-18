import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.deepPurple.shade50,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        onTap: (index){
          //NOTE : whenever we call setState((){}) in a stateful widget, it rebuilds the whole UI
          setState((){
            selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "List"),
        ],
      ),
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
