import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({Key? key,
    required this.text,
    required this.bColor,
    required this.tColor,
    required this.tSize,
    required this.callBack
  })
      : super(key: key);

  final String text;
  final Color bColor;
  final Color tColor;
  final double tSize;
  final Function? callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: bColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: tSize, color: tColor),
            ),
          ),
          onPressed: () => callBack!(text),
        ),
      ),
    );
  }
}
