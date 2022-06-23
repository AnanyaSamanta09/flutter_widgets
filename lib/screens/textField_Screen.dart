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
             decoration: const InputDecoration(
               labelText: 'Name :',
               labelStyle: TextStyle(
                 fontSize: 25,
                 color: Colors.blue,
                 fontWeight: FontWeight.bold,
               ),
               //NOTE:  enabledBorder is used for border
               enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                 color: Colors.red,
                 width: 3.0,
               ),
                 borderRadius: BorderRadius.all(Radius.circular(20))
               ),
                //NOTE: focusedBorder is used to focus the border
               focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                 color: Colors.red,
                 width: 3.0,
               ),
                   borderRadius: BorderRadius.all(Radius.circular(20))
               ),
             ),
           ),
         ),
       ),
    );
  }
}
