import 'package:flutter/material.dart';
import 'package:testFlutter/screen/details/component/detail_screen.dart';
import 'package:testFlutter/screen/home/component/SectionCard.dart';

class DataSectionCard extends StatelessWidget {
  const DataSectionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SectionCard(
            img:
                "https://madahannan.files.wordpress.com/2012/06/ustaz-azhar-idrus-pendakwah-bebas.jpg",
            category: "Pengkaji",
            ustadz: "Ust Azhar Idrus",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          SectionCard(
            img:
                "https://muslimobsession.com/wp-content/uploads/2020/07/images-15.jpeg",
            category: "Pengkaji",
            ustadz: "Ust Adi Hidayat ",
            press: () {
              print("okeee");
            },
          ),
          SectionCard(
            img:
                "https://assets.pikiran-rakyat.com/crop/31x66:817x805/x/photo/2020/07/12/3138176764.jpg",
            category: "Pengkaji",
            ustadz: "Buya Yahya",
            press: () {
              print("okeee");
            },
          ),
        ],
      ),
    );
  }
}
