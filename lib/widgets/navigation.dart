import 'package:flutter/material.dart';
import 'package:portfolio/Pages/aboutme.dart';
import 'package:portfolio/Pages/home.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.sizeOf(context).height;
    var widthSize = MediaQuery.sizeOf(context).width;
    return FittedBox(
      alignment: Alignment.topCenter,
      fit: BoxFit.contain,
      child: ResponsiveRowColumn(
        columnSpacing: heightSize * .025,
        rowSpacing: widthSize * .15,
        columnPadding: EdgeInsets.fromLTRB(
            widthSize * .15, heightSize * .05, widthSize * .15, 0),
        rowPadding: EdgeInsets.fromLTRB(widthSize * .15, heightSize * .07,
            widthSize * .15, heightSize * .10),
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        // rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveRowColumnItem(
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                InkWell(
                  child: const Text(
                    "Code & Compete",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () =>
                      {Navigator.pushNamed(context, HomePage.routername)},
                ),
                SizedBox(
                  width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? 0
                      : widthSize * .2,
                ),
              ])),
          ResponsiveRowColumnItem(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: const Text(
                    "About",
                    style: TextStyle(
                        fontFamily: 'Space Mono',
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  onTap: () {
                    ModalRoute.of(context)?.settings.name == '/aboutme'
                        ? Null
                        : Navigator.pushNamed(context, AboutMePage.routername);
                  },
                ),
                SizedBox(
                  width: widthSize * .05,
                ),
                InkWell(
                  child: const Text(
                    "Linkedin",
                    style: TextStyle(
                        fontFamily: 'Space Mono',
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  onTap: () async {
                    await launchUrl(
                        Uri.parse('https://www.linkedin.com/in/parasjangid11/'),
                        // mode: LaunchMode.externalApplication,
                        webOnlyWindowName: '_blank');
                  },
                ),
                SizedBox(
                  width: widthSize * .05,
                ),
                InkWell(
                  child: const Text(
                    "Github",
                    style: TextStyle(
                        fontFamily: 'Space Mono',
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  onTap: () async {
                    await launchUrl(Uri.parse('https://github.com/Thorium09'),
                        // mode: LaunchMode.externalApplication,
                        webOnlyWindowName: '_blank');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
