import 'package:conciergerie/Style/AppColors.dart';
import 'package:flutter/cupertino.dart';

class Footerwidget extends StatelessWidget {
  const Footerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.8,
      decoration: BoxDecoration(color: AppColors().greyButton),
    );
  }
}
