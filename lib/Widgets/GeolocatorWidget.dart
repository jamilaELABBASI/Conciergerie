import 'package:conciergerie/Style/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: screenHeight * 0.80,
          decoration: BoxDecoration(
            color: AppColors().primary,
          ),
        ),
        Divider(
          height: 20,
          color: Colors.black,
        ),
      ],
    );
  }
}
