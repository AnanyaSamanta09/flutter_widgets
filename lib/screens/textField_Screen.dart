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
             maxLines: 10,
             minLines: 1,
             cursorColor: Colors.black, //NOTE: it is use for the color of the cursor
             cursorHeight: 30,  ////NOTE: it is used for cursor length
             keyboardType: TextInputType.phone,  //NOTE: it is used for number keyborard
             decoration: const InputDecoration(
               prefixIcon: Icon(Icons.phone), //NOTE: used for phone icon in the phone box
               hintText: 'Ananya', //NOTE: used for hint text in the box
               labelText: 'PHONE :',
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
