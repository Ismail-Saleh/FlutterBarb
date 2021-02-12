import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';

class TittleWithMore extends StatelessWidget {
  const TittleWithMore({Key key, this.judul, this.tekan}) : super(key: key);

  final String judul;
  final Function tekan;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleCollectionView(
            text: judul,
          ),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class TitleCollectionView extends StatelessWidget {
  const TitleCollectionView({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          )
        ],
      ),
    );
  }
}
