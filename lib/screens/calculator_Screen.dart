import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int result =0;
  int number1=0, number2=0;
  calculate(){      //NOTE: this function is used for calculating the result
    setState((){    //NOTE: this is used to show the changed value after addition, to the user
      result=number1+number2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,  //NOTE: it is used for the gap between number 1 & number 2 boxes
              children: [
                SizedBox(
                  width: 140,  //NOTE: it is used for the size of number 1 box
                  child: TextFormField(
                    onChanged: (value) {  //NOTE: it is used to show the changed value that user had entered
                    //debugPrint('First number =$value');
                      if(value.isNotEmpty){    //NOTE: if box is not empty then only result value will be changed
                        setState((){
                          number1= int.parse(value);  //NOTE: it is used for changing the value that is in string(by default) in integer
                        });
                      }
                    },
                    maxLines: 10, //NOTE: it is used for height of box
                    minLines: 1, //NOTE: it is usd for width of the box
          decoration: const InputDecoration(
            labelText: ' Number 1 :',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
                  //borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            //NOTE: focusedBorder is used to focus the border
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
                 //borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  ),
                  ),

                ),
                Icon(Icons.add),
                SizedBox(
                   width: 140,
                  child: TextFormField(
                    onChanged: (value) {
                      //debugPrint('First number =$value');
                      if(value.isNotEmpty){
                        setState((){
                          number2= int.parse(value);
                        });
                      }
                    },
                    maxLines: 10,
                    minLines: 1,
                    decoration: const InputDecoration(
                      labelText: ' Number 2 :',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      //NOTE: focusedBorder is used to focus the border
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),

                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            MaterialButton(onPressed: calculate,
              child: Text('Calculate'),
              color: Colors.blue,
            ),
            SizedBox(
              height: 100,
            ),
           Container(
             alignment: Alignment.center,  //NOTE: for getting the result value in center
             height: 50,  //height of the box
             width: 200, //width of the box
             decoration: BoxDecoration(
               border: Border.all() //NOTE: border of the result box
             ),
             child: Text(result.toString(),
               style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 18),
             ),
           )

          ],
        ),
      ),
    );
  }
}
