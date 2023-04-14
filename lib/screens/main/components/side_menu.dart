import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/iStock-trash.jpg"),
            ),
            DrawerListeTitle(
              title:"Dashboard",
              svgSrc: "assets/icons/dashboard-layout-svgrepo-com.svg",
              press: (){},
            ),
            DrawerListeTitle(
              title:"Tracking",
              svgSrc: "assets/icons/dashboard-layout-svgrepo-com.svg",
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListeTitle extends StatelessWidget {
  const DrawerListeTitle({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}