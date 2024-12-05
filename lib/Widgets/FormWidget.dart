import 'package:conciergerie/Style/AppColors.dart';
import 'package:conciergerie/Widgets/SousWidgets/TextFieldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formwidget extends StatefulWidget {
  const Formwidget({super.key});

  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 8,
            color: Colors.black,
          ),
          Container(
              margin: EdgeInsets.all(40),
              child: Image.asset("images/logo.png")),
          Container(
            width: screenWidth * 0.90,
            height: screenHeight * 0.82,
            decoration: BoxDecoration(
                color: AppColors().primary,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 150, top: 20),
                  child: Text(
                    "Dites-nous tout",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldWidget(
                            labelTextField: "First Name",
                            hintTextField: "Enter your first name ",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            labelTextField: "Last Name",
                            hintTextField: "Enter your last name ",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            labelTextField: "Email",
                            hintTextField: "Enter your email ",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            labelTextField: "Number",
                            hintTextField: "Enter your phone number",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            labelTextField: "Object",
                            hintTextField: "Enter your object ",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            labelTextField: "Message",
                            hintTextField: "Enter your Message ",
                            numberLine: 6,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Container(
                                color: AppColors().greyButton,
                                width: screenWidth,
                                height: screenHeight * 0.045,
                                child: Center(
                                  child: Text(
                                    "ENVOYER",
                                    style: TextStyle(
                                        color: AppColors().whiteColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
