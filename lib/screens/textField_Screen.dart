import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
       body: Center(
         child: SizedBox(
           width: 300, //NOTE: it is used for the size of the line,i.e.,text line
           child: TextFormField(

           ),
         ),
       ),
    );
  }
}
