import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';

class HeaderWithMenu extends StatelessWidget {
  const HeaderWithMenu({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.4),
      height: size.height * 0.26,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.26 - 30,
            padding: EdgeInsets.fromLTRB(kDefaultPadding + 6, kDefaultPadding,
                kDefaultPadding, kDefaultPadding + 63),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(36))),
            child: Row(
              children: [
                AutoSizeText(
                  "Hi, Ismail Saleh!",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.all(kDefaultPadding),
                height: 90,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AutoSizeText(
                          "Saldo",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Spacer(),
                        AutoSizeText(
                          "Rp.2.500.000",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.wallet_giftcard,
                          color: kPrimaryColor,
                        ),
                        Text(
                          " Jumlah Zakat",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Spacer(),
                        Text(
                          "Rp.1.000.000",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
