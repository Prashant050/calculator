import './widget/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
 int? fNum;
 int? sNum;
 String history = "";
 String textDisplay = "";
 String res = "";
 String operation = "";

 void btClick(String btValue){
   print(btValue);

   if(btValue == 'C'){
     textDisplay = "";
     fNum = 0;
     sNum = 0;
     res = "";
   } else if(btValue == "AC"){
     fNum = 0;
     sNum = 0;
     textDisplay = "";
     res = "";
     history = "";
   } else if(btValue == '+/-') {
     if(textDisplay[0] != "-"){
       res = '-$textDisplay';
     } else{
       res = textDisplay.substring(1);
     }
   }else if(btValue == "<") {
     res = textDisplay.substring(0 ,textDisplay.length - 1);
   }else if(btValue == "+" || btValue == "-" || btValue == "X" || btValue == "/"){
     fNum = int.parse(textDisplay!);
     res = "";
     operation = btValue;
   } else if(btValue == "="){
     sNum = int.parse(textDisplay!);
     if(operation == "+"){
       res = (fNum! + sNum!).toString();
       history = fNum.toString() + operation.toString() + sNum.toString();
     }
     if(operation == "-"){
       res = (fNum! - sNum!).toString();
       history = fNum.toString() + operation.toString() + sNum.toString();
     }
     if(operation == "X"){
       res = (fNum! * sNum!).toString();
       history = fNum.toString() + operation.toString() + sNum.toString();
     }
     if(operation == "/"){
       res = (fNum! / sNum!).toString();
       history = fNum.toString() + operation.toString() + sNum.toString();
     }
   }else {
     res = int.parse(textDisplay! + btValue).toString();
   }
   setState(() {
     textDisplay = res;
   });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CalCulator",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Calculator"),
        ),
        backgroundColor: const Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history!,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(fontSize: 48, color: Colors.white30),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    textDisplay!,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(fontSize: 48, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    bColor: Colors.red.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,

                  ),
                  CalculatorButton(
                    text: '<',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 25,
                    callBack: btClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 25,
                    callBack: btClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    bColor: Colors.blueGrey.shade200,
                    tColor: Colors.black,
                    tSize: 20,
                    callBack: btClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    bColor: Colors.yellow.shade200,
                    tColor: Colors.black,
                    tSize: 25,
                    callBack: btClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
