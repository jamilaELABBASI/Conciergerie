import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final List<String> _images = [
    "images/picture1.jpg",
    "images/picture2.jpg",
    "images/picture3.jpg",
  ];
  final String _sousTextImage = "Confiez nous les cles de votre tranquilite";
  final List<String> _textImages = [
    "Gestion & Conciergerie",
    "Gestion de vos annonce",
    "Arrivee / Depart / Menage"
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      //margin: EdgeInsets.only(top: 2, bottom: 2),
      color: Color(0xFF132C39),
      width: screenWidth,
      height: screenHeight * 0.75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                child: Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                  width: screenWidth,
                  height: screenHeight * 0.75,
                ),
              ),
              Positioned(
                top: 250,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _textImages[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25, // Dynamic font size
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        child: Text(
                          _sousTextImage,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22, // Dynamic font size
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.3,
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        height: screenHeight * 0.06,
                        color: Color(0xFF132C39),
                        child: TextButton(
                          child: Text(
                            "CONTACTEZ-NOUS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
