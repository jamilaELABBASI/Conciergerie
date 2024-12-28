import 'package:conciergerie/Style/AppColors.dart';
import 'package:conciergerie/Widgets/ArticleWidget.dart';
import 'package:conciergerie/Widgets/FooterWidget.dart';
import 'package:conciergerie/Widgets/FormWidget.dart';
import 'package:conciergerie/Widgets/GeolocatorWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/CarouselWidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //PageController _controller = PageController();

  //int _currentPage = 0;
  final List<List<String>> _content = [
    [
      "L’ accueil clientèle de vos arrivées et départs",
      "Lorem ipsum dolor sit amet. Ut culpa necessitatibus ut eius dolores est quia dolorum eos excepturi deserunt est iusto animi. In animi delectus nam dolorem tempore ab quam sequi et assumenda tempore qui voluptatem architecto ut facere illo."
    ],
    [
      "Le ménage et l’entretien du linge",
      "Lorem ipsum dolor sit amet. Ut culpa necessitatibus ut eius dolores est quia dolorum eos excepturi deserunt est iusto animi. In animi delectus nam dolorem tempore ab quam sequi et assumenda tempore qui voluptatem architecto ut facere illo."
    ],
    [
      "L’assistance de vos locataires",
      "Lorem ipsum dolor sit amet. Ut culpa necessitatibus ut eius dolores est quia dolorum eos excepturi deserunt est iusto animi. In animi delectus nam dolorem tempore ab quam sequi et assumenda tempore qui voluptatem architecto ut facere illo."
    ]
  ];
  final List<String> navigation = [
    "Navigation",
    "Accueil",
    "Formules & tarifs",
    "FAQ",
    "Contact",
    "Blog",
    "Mentions légales",
  ];
  final List<String> information = [
    "HomeHaven Conciergerie John Doe 13 Quai aux Fleurs 75004 Paris",
    "Accueil",
    "Tél : 01 02 03 04 05",
    "Email :",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      shrinkWrap: true,
      children: [
        CarouselWidget(),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
              textAlign: TextAlign.justify,
              "HomeHaven Conciergerie Conciergerie experte en services à la location courte duréeBienvenue chez HomeHaven Conciergerie, votre partenaire de confiance pour une expérience de location courte durée sans soucis.Chez HomeHaven Conciergerie, nous comprenons l'importance de chaque séjour, que ce soit pour les voyageurs en quête d'une escapade mémorable ou pour les propriétaires souhaitant maximiser leur investissement immobilier. Avec notre expertise en conciergerie immobilière, nous sommes là pour simplifier chaque étape du processus, offrant à la fois un service de classe mondiale et une tranquillité d'esprit inégalée.Nous mettons à votre disposition une équipe dévouée de professionnels de la conciergerie, spécialisés dans la gestion complète de votre propriété en location courte durée. De la gestion des réservations et de la communication avec les voyageurs à l'entretien ménager de qualité supérieure et aux services de maintenance, nous prenons en charge tous les aspects de la gestion immobilière, vous permettant de vous concentrer sur ce qui compte vraiment.En choisissant HomeHaven Conciergerie, vous bénéficiez non seulement d'un service personnalisé et attentif, mais également d'une stratégie de tarification compétitive et d'une visibilité accrue sur les plateformes de location les plus populaires. Notre engagement envers l'excellence et notre passion pour l'hospitalité se reflètent dans chaque détail, garantissant des séjours exceptionnels pour vos invités et des rendements financiers optimaux pour vous, les propriétaires.Que vous soyez un propriétaire cherchant à optimiser le potentiel de votre propriété ou un voyageur à la recherche d'un hébergement de qualité, HomeHaven Conciergerie est là pour répondre à vos besoins. Contactez-nous dès aujourd'hui pour découvrir comment nous pouvons transformer votre expérience de location courte durée.Bienvenue chez HomeHaven Conciergerie - où chaque séjour est une expérience mémorable."),
        ),
        Column(children: [
          Container(
            width: screenWidth * 0.2,
            height: screenHeight * 0.2,
            child: Image.asset("images/key.png"),
            // width: screenWidth * 0.18,
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            itemCount: _content.length,
            itemBuilder: (context, index) {
              return Container(
                //width: screenWidth * 0.99999,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: screenHeight * 0.2,
                child: Column(
                  children: [
                    Text(
                      _content[index][0],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(textAlign: TextAlign.justify, _content[index][1])
                  ],
                ),
              );
            }, // Prevent the inner ListView from scrolling
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap:
                true, // Allows the inner ListView to take only the space it needs
          ),
          Container(
            width: screenWidth,
            height: screenHeight * 0.35,
            decoration: BoxDecoration(color: AppColors().amberColor),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Besoin de renseignements ?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet. Ab necessitatibus dolorem aut officia repudiandae et delectus recusandae ut neque officia 33 libero quod ab itaque internos"),
                  Container(
                    width: screenWidth * 0.5,
                    height: screenHeight * 0.06,
                    color: AppColors().primary,
                    child: TextButton(
                      child: Text(
                        "CONTACTEZ-NOUS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Articlewidget(),
          Formwidget()
        ]),
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 20,
          color: Colors.black,
        ),
        GeolocatorWidget(),
        Footerwidget(),
      ],
    );
  }
}
