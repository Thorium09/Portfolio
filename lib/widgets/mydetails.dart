import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.sizeOf(context).height;
    var widthSize = MediaQuery.sizeOf(context).width;
    return FittedBox(
      fit: BoxFit.contain,
      child: ResponsiveRowColumn(
        columnSpacing: 30,
        rowSpacing: widthSize * .05,
        columnPadding:
            EdgeInsets.fromLTRB(widthSize * .25, 15, widthSize * .25, 10),
        rowPadding:
            EdgeInsets.fromLTRB(0, heightSize * .05, 0, heightSize * .10),
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        rowMainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: FittedBox(
              fit: BoxFit.contain,
              child: CircleAvatar(
                maxRadius:
                    ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                        ? 100
                        : 120,
                backgroundImage: const AssetImage(
                  'assets/images/myphoto.jpg',
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: Column(
              children: [
                const AutoSizeText(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(25, 25, 23, 1)),
                    'I\'m Paras Jangid'),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: widthSize * .4,
                  child: const AutoSizeText(
                      textAlign: TextAlign.center,
                      // maxLines: 5,
                      style: TextStyle(
                          fontFamily: 'Space Mono',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(25, 25, 23, 1)),
                      'I\'m a software and Android developer with experience working with Java, JavaScript, Node.js, Flutter, SpringBoot and  many other technologies.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
