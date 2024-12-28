import 'package:conciergerie/Style/AppColors.dart';
import 'package:conciergerie/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footerwidget extends StatelessWidget {
  const Footerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    AppTextStyle titleStyle = AppTextStyle();

    return Container(
      height: screenHeight * 0.99,
      decoration: BoxDecoration(color: AppColors().greyButton),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.6,
              child: Image(image: AssetImage("images/logo.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Vivez l'instant, laissez-nous gérer le reste : Le séjour parfait avec notre conciergerie en location courte durée.",
              style: AppTextStyle.text3.copyWith(color: AppColors().whiteColor),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Navigation",
              style: AppTextStyle.text1,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Accueil",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Formules & tarifs",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "FAQ",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Blog",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Mentions légales",
                  style: AppTextStyle.text2
                      .copyWith(color: AppColors().whiteColor),
                )),
            Column(
              children: [
                Text(
                  "Informations",
                  style: AppTextStyle.text1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "HomeHaven Conciergerie John Doe 13 Quai aux Fleurs 75004 Paris",
                  style: TextStyle(color: AppColors().whiteColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Tél      : ",
                          style: TextStyle(
                              color: AppColors().primary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "01 02 03 04 05",
                          style: TextStyle(color: AppColors().whiteColor),
                        ),
                        SizedBox(width: 70)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Email : ",
                          style: TextStyle(
                              color: AppColors().primary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "conciergerie@gmail.com",
                          style: TextStyle(color: AppColors().whiteColor),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text(
                      "Créer une application en ligne avec www.creer-application.com",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
