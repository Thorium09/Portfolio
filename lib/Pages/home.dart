import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/aboutme.dart';
import 'package:portfolio/widgets/navigation.dart';
import 'package:portfolio/widgets/socials.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routername = '/';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, String> socialLinks = {
    'Twitter/X': 'https://x.com/_parasjangid?t=HcBNMYjzk_oa7z1k3yd3eg&s=09',
    'LinkedIn': 'https://www.linkedin.com/in/parasjangid11/',
    'Instagram':
        'https://www.instagram.com/paras.jangid_?igsh=MWY0dWJyOHJhMnFlcA==',
    'Github': 'https://github.com/Thorium09',
  };
  bool footerAboutme = false;
  @override
  Widget build(BuildContext context) {
    // var heightSize = MediaQuery.sizeOf(context).height;
    var widthSize = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 70),
            width: widthSize,
            // height: 650,
            color: const Color.fromRGBO(216, 215, 214, 1),
            child: Column(
              children: [
                const Navigation(),
                SizedBox(
                  width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? 100
                      : 150,
                  height: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? 100
                      : 150,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.asset(
                        'assets/images/podcast-logo-transparent.xK89ChYS_Z7BvB.webp'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AutoSizeText(
                  maxLines: widthSize <= 103 ? 12 : 1,
                  "Code & Compete",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Space Mono',
                      color: Colors.blue,
                      fontSize: widthSize <= 285 ? 24 : 32),
                ),
                const SizedBox(
                  height: 30,
                ),
                AutoSizeText(
                  maxLines: 2,
                  "by",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Space Mono',
                      fontSize: widthSize <= 285 ? 10 : 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                AutoSizeText(
                  maxLines: widthSize <= 196 ? 11 : 1,
                  "Paras Jangid",
                  style: TextStyle(
                      letterSpacing: 10,
                      fontFamily: 'Rubik',
                      fontSize: widthSize <= 285 ? 35 : 45,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 50),
            width: widthSize,
            // height: 900,
            color: const Color.fromRGBO(25, 25, 23, 1),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: CircleAvatar(
                    maxRadius:
                        ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                            ? 90
                            : 120,
                    backgroundImage: const AssetImage(
                      'assets/images/myphoto.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const AutoSizeText(
                  'Hi, I \'m Paras Jangid',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(231, 229, 228, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const AutoSizeText(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'Firs Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(231, 229, 228, 1)),
                    'I\'m a professional Software developer'),
                // const AutoSizeText(
                //     textAlign: TextAlign.center,
                //     maxLines: 2,
                //     style: TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.w800,
                //         color: Color.fromRGBO(231, 229, 228, 1)),
                //     'Tech Stack')
                const SizedBox(height: 300, child: Socials()),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  width: 190,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, AboutMePage.routername);
                    },
                    child: const FittedBox(
                      fit: BoxFit.contain,
                      child: Row(
                        children: [
                          Text(
                            'Learn More about me',
                            style: TextStyle(
                                fontFamily: 'Firs Sans',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 50),
            width: widthSize,
            // height: 350,
            color: const Color.fromRGBO(216, 215, 214, 1),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const FittedBox(
                  fit: BoxFit.contain,
                  child: AutoSizeText(
                    'You also find me here',
                    // maxLines: 1,
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(25, 25, 23, 1)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  width: widthSize * .2,
                  child: ListView.builder(
                      itemCount: socialLinks.length,
                      itemBuilder: (context, index) {
                        String platform = socialLinks.keys
                            .elementAt(index); // Get the platform name
                        String url = socialLinks[platform]!; // Get the URL
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent), // Transparent background
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent), // No overlay color
                            ),
                            onPressed: () => launchUrl(Uri.parse(url)),
                            child: AutoSizeText(
                              maxLines: 1,
                              platform,
                              style: const TextStyle(
                                  fontFamily: 'Firs Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                  fontSize: 23),
                            ),
                          ),
                        );
                      }),
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
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
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
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Firs Sans',
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
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Firs Sans',
                              color: Color.fromRGBO(216, 215, 214, 1),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
