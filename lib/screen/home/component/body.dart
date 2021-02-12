import 'package:flutter/material.dart';
import 'package:testFlutter/screen/home/component/headerWithMenu.dart';
import 'package:testFlutter/screen/home/component/menuWithBtnMore.dart';
import 'package:testFlutter/screen/home/component/pengkaji.dart';
import 'package:testFlutter/screen/home/component/NewsComponent.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithMenu(size: size),
          TittleWithMore(
            judul: "Kajian",
            tekan: () {},
          ),
          DataSectionCard(),
          TittleWithMore(
            judul: "News",
            tekan: () {},
          ),
          NewsData()
        ],
      ),
    );
  }
}
