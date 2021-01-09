import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icons_card.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          TitleAndPrice(
            title: "IPhone 12",
            country: "Apple",
            price: 699,
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  )),
                  color: kPrimaryColor,
                  onPressed: (){

                  },
                  child: Text("İndi al", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                )
              ),
              Expanded(child: FlatButton(
                child: Text("Məhsul Haqqında"),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
