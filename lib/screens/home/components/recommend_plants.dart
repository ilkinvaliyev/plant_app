import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/details_screen.dart';


class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            title: "SAMANTHA",
            image: "image_1.png",
            country: "RUSSIA",
            price: 440,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            title: "SAMANTHA",
            image: "image_2.png",
            country: "RUSSIA",
            price: 440,
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            title: "SAMANTHA",
            image: "image_3.png",
            country: "RUSSIA",
            price: 440,
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/$image"),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                      ])),
                  Spacer(),
                  Text(
                    "\$${price}",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
