import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Articlewidget extends StatefulWidget {
  const Articlewidget({super.key});

  @override
  State<Articlewidget> createState() => _ArticlewidgetState();
}

class _ArticlewidgetState extends State<Articlewidget> {
  final List<String> _articlePictures = [
    "images/picture4.jpg",
    "images/picture5.jpg",
    "images/picture6.jpg",
  ];

  final List<String> _articleTitles = [
    "Titre article 01",
    "Titre article 02",
    "Titre article 03",
  ];

  final List<String> _articleContents = [
    "Lorem ipsum dolor, consectetur...",
    "Lorem ipsum dolor, consectetur...",
    "Lorem ipsum dolor, consectetur...",
  ];

  final List<String> _articleButtons = [
    "Savoir plus",
    "Savoir plus",
    "Savoir plus",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.624,
      margin: EdgeInsets.all(40),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _articlePictures.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color(0xFF132C39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  width: screenWidth,
                  height: screenHeight * 0.5,
                  child: Image.asset(
                    _articlePictures[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _articleTitles[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      _articleContents[index],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          _articleButtons[index],
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ))
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
