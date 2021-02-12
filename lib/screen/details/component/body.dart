import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Spacer(),
                    BenefitCard(),
                    BenefitCard(),
                    BenefitCard(),
                    BenefitCard(),
                  ],
                ),
              )),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.73,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          color: kPrimaryColor.withOpacity(0.23),
                          blurRadius: 50)
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://madahannan.files.wordpress.com/2012/06/ustaz-azhar-idrus-pendakwah-bebas.jpg"))),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BenefitCard extends StatelessWidget {
  const BenefitCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(4, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.30))
      ]),
      child: Icon(
        Icons.food_bank,
        color: kPrimaryColor,
      ),
    );
  }
}
