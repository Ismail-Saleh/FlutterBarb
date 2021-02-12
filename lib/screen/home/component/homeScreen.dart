import 'package:flutter/material.dart';
import 'package:testFlutter/contraint.dart';
import 'package:testFlutter/screen/home/component/body.dart';
// import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        height: size.width * 0.16,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(offset: Offset(0, -1), blurRadius: 25, color: kPrimaryColor)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.book), onPressed: null),
            IconButton(icon: Icon(Icons.camera_roll), onPressed: null),
            IconButton(icon: Icon(Icons.check), onPressed: null),
            IconButton(icon: Icon(Icons.call), onPressed: null)
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}
