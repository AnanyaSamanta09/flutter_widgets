import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  //NOTE : selectedIndex=0 means it will start from 0th index,i.e., Home
  int selectedIndex = 0;
  bool showFloatingButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.deepPurple.shade50,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          //NOTE : whenever we call setState((){}) in a stateful widget, it rebuilds the whole UI
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "List"),
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
      //NOTE : if showFloatingButton is true then show container ,i.e, cart or else don't show cart
      floatingActionButton:showFloatingButton? Container(
        height: 60,
        width: 100,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Cart',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15)),
      ):SizedBox(),//NOTE: SizedBox and showfloatingButton before container causes cart to disappear when box is not checked
      body: Center(
          child: IconButton(
        icon: Icon(showFloatingButton
            ? Icons.check_box
            : Icons.check_box_outline_blank),
            iconSize: 60,
            color: Colors.green,
            onPressed: (){
          setState((){
            showFloatingButton=!showFloatingButton;
          });
            }
      )),
    );
  }
}
// NOTE : CrossAxisAlignment in a row works with respect to the largest element present in the children list
