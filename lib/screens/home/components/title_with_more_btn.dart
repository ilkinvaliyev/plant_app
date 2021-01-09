import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text : title),
          Spacer(),
          FlatButton(
              onPressed: press,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: kPrimaryColor,
              child: Text("Daha çox", style: TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }

}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key, this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 9),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 2,
              right: 2,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 8),
                height: 4, color: kPrimaryColor.withOpacity(0.4),
              )
          )

        ],
      ),
    );
  }
}
