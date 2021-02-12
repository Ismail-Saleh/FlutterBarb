import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';

class NewsData extends StatelessWidget {
  const NewsData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NewsCard(
            press: () {
              print("ini news");
            },
            img:
                "https://s3-ap-southeast-1.amazonaws.com/loket-production-sg/images/banner/20190927221546_5d8e27a2a06f4.jpg",
          ),
          NewsCard(
            press: () {
              print("ini news");
            },
            img:
                "https://i3.wp.com/www.maahaadzaa.com/content/uploads/2019/09/IMG-20190912-WA0005.jpg",
          ),
          NewsCard(
            press: () {
              print("ini news");
            },
            img:
                "https://i.pinimg.com/564x/ea/01/8e/ea018e017b0884f30e72169f681c82d1.jpg",
          ),
          NewsCard(
            press: () {
              print("ini news");
            },
            img:
                "https://um.ac.id/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-15-at-08.34.44.jpeg",
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({Key key, this.img, this.press}) : super(key: key);

  final String img;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding / 2,
            kDefaultPadding, kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.red,
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(img))),
      ),
    );
  }
}
