import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelTextField;
  final String hintTextField;
  final int? numberLine;

  TextFieldWidget(
      {super.key,
      required this.hintTextField,
      required this.labelTextField,
      this.numberLine});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

    return TextField(
      style: TextStyle(color: Colors.white),
      maxLines: widget.numberLine,
      decoration: InputDecoration(
          //fillColor: Colors.white,
          //filled: true,
          //floatingLabelBehavior: FloatingLabelBehavior.always,
          alignLabelWithHint: true,
          label: Text(
            widget.labelTextField,
            style: TextStyle(color: Colors.white),
          ),
          border: new OutlineInputBorder(
              borderSide: new BorderSide(
            width: screenWidth * 0.7,
            // color: Colors.white,
          )),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: widget.hintTextField,
          hintStyle: TextStyle(color: Colors.white)),
    );
  }
}
