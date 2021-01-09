import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_search.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildContainer(size, context),
          TitleWithMoreBtn(
            title: "Ən Yenilər",
            press: () {},
          ),
          RecommendPlants(),
          TitleWithMoreBtn(
            title: "Ən Çox Satılanlar",
            press: () {},
          ),
          FeaturedPlant(size: size),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
