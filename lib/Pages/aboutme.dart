import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mydetails.dart';
import 'package:portfolio/widgets/navigation.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});
  static String routername = '/aboutme';
  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  bool footerAboutme = false;
  @override
  Widget build(BuildContext context) {
    // var heightSize = MediaQuery.sizeOf(context).height;
    var widthSize = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        padding: const EdgeInsets.only(bottom: 50),
        width: widthSize,
        // height: 690,
        color: const Color.fromRGBO(216, 215, 214, 1),
        child: const Column(
          children: [Navigation(), MyDetails()],
        ),
      ),
      Container(
        width: widthSize,
        // height: 550,
        color: const Color.fromRGBO(25, 25, 23, 1),
        padding: EdgeInsets.fromLTRB(
            ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? widthSize * .1
                : widthSize * .2,
            80,
            ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? widthSize * .1
                : widthSize * .2,
            80),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'I started coding at the age of 17',
              // textAlign: TextAlign.left,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(231, 229, 228, 1)),
            ),
            SizedBox(
              height: 30,
            ),
            AutoSizeText(
              'With my formal journey beginning in college. I completed my Higher Secondary Certificate in 2020, followed by a Bachelor of Engineering in Computer Science and Engineering, graduating in 2024. ,My hands-on experience in the field began with a mobile development internship at Eluminous Technologies, where I was actively involved in developing and optimizing mobile applications. During my internship, I contributed in creating Mobile applications, using Flutter and Firebase. My passion for coding led me to serve as the Technical Lead for the Google Developer Students Club. I’ve even ranked in the top 1% of the TCS CodeVita 2023 competition. Passionate about teaching and technology, I thrive on helping others learn and grow in the field. Nowadays, I primarily focus on App development but my general passion is coding and everything that\'s related to it! Being a self-taught developer, I know the struggle of learning to code — that\'s why I absolutely love teaching.',
              // maxLines: 34,
              style: TextStyle(
                  fontFamily: 'Firs Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  fontSize: 18,
                  color: Color.fromRGBO(231, 229, 228, 1)),
            )
          ],
        ),
      ),
      Container(
        width: widthSize,
        // height: 500,
        color: const Color.fromRGBO(231, 229, 228, 1),
        padding: EdgeInsets.fromLTRB(
            ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? widthSize * .1
                : widthSize * .2,
            80,
            ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? widthSize * .1
                : widthSize * .2,
            80),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'But there\'s more than coding',
              // textAlign: TextAlign.left,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(25, 25, 23, 1)),
            ),
            SizedBox(
              height: 30,
            ),
            AutoSizeText(
              'As you can probably tell from the previous section, I\'m a passionate developer. But I also love to do other things! Whilst I\'ve been heads down creating pojects over the past years, I also love to travel, cook (and eat!), do sports and spend time with my friends and family. Oh, and I like video games! I also love to read Manga. I\'m a huge fan of the “One Piece” series, I love Anime Series and I enjoy reading productivity books, and, in general, books that broaden my horizon and give me inspiration and new ideas.',
              // maxLines: 12,
              style: TextStyle(
                  fontFamily: 'Firs Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  fontSize: 18,
                  color: Color.fromRGBO(25, 25, 23, 1)),
            )
          ],
        ),
      ),
      Container(
          width: widthSize,
          height: 250,
          color: const Color.fromRGBO(25, 25, 23, 1),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const FittedBox(
                fit: BoxFit.contain,
                child: AutoSizeText(
                  '© Paras Jangid',
                  // maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Firs Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromRGBO(216, 215, 214, 1)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.transparent), // Transparent background
                        overlayColor: MaterialStateProperty.all(
                            Colors.transparent), // No overlay color
                      ),
                      onHover: (value) {
                        setState(() {
                          footerAboutme = !footerAboutme;
                        });
                      },
                      onPressed: () => {
                        ModalRoute.of(context)?.settings.name == '/aboutme'
                            ? Null
                            : Navigator.pushNamed(
                                context, AboutMePage.routername)
                      },
                      child: AutoSizeText(
                        maxLines: 1,
                        'About Me',
                        style: TextStyle(
                            fontFamily: 'Firs Sans',
                            fontWeight: FontWeight.w400,
                            color: footerAboutme
                                ? Colors.white30
                                : const Color.fromRGBO(216, 215, 214, 1),
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: widthSize * .05,
                    ),
                    const AutoSizeText(
                      maxLines: 1,
                      'Code & Compete',
                      style: TextStyle(
                          fontFamily: 'Firs Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(216, 215, 214, 1),
                          fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ))
    ])));
  }
}
