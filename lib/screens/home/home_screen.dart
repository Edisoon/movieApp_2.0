import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_2/constans.dart';
import 'package:movie_app_2/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColorP,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: WhiteColorP,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: DefaultPadding),
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      actions: [
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"))
      ],
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: Icon(Icons.menu),
      //   iconSize: 30,
      //   color: BlackColorP,
      //   padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
      // ),
    );
  }
}
