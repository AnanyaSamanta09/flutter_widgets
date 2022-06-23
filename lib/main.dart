import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/Progress_Screen.dart';
import 'package:flutter_widgets/screens/cardScreen.dart';
import 'package:flutter_widgets/screens/clip.dart';
import 'package:flutter_widgets/screens/column_widget.dart';
import 'package:flutter_widgets/screens/gridViewScreen.dart';
import 'package:flutter_widgets/screens/listBuilder_Screen.dart';
import 'package:flutter_widgets/screens/listView.dart';
import 'package:flutter_widgets/screens/row_widget.dart';
import 'package:flutter_widgets/screens/textField_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TextFieldScreen(),debugShowCheckedModeBanner: false,);
  }
}

