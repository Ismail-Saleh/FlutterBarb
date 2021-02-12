import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({Key key, this.img, this.category, this.ustadz, this.press})
      : super(key: key);

  final String img, ustadz, category;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding / 2,
          kDefaultPadding / 2, kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image(
              image: NetworkImage("$img"),
              fit: BoxFit.cover,
              height: size.height * 0.2,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.20),
                        blurRadius: 50,
                        offset: Offset(0, 10))
                  ]),
              child: Row(
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "$ustadz".toUpperCase(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        AutoSizeText("$category",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
