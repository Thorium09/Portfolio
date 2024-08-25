import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatefulWidget {
  const Socials({super.key});

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  bool isGithubHovered = false;
  bool isLinkedinHovered = false;
  bool isinstaHovered = false;
  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.sizeOf(context).height;
    var widthSize = MediaQuery.sizeOf(context).width;
    return FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: ResponsiveRowColumn(
          columnSpacing: heightSize * .025,
          rowSpacing: widthSize * .02,
          columnPadding: EdgeInsets.fromLTRB(
              widthSize * .15, heightSize * .05, widthSize * .15, 20),
          rowPadding: EdgeInsets.fromLTRB(widthSize * .15, heightSize * .07,
              widthSize * .15, heightSize * .05),
          layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse('https://github.com/Thorium09'),
                      // mode: LaunchMode.externalApplication,
                      webOnlyWindowName: '_blank');
                },
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isGithubHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isGithubHovered = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: isGithubHovered
                          ? const Color.fromRGBO(231, 229, 228, 1)
                          : const Color.fromRGBO(25, 25, 23, 1),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: !isGithubHovered
                            ? const Color.fromRGBO(231, 229, 228, 1)
                            : const Color.fromRGBO(25, 25, 23, 1),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isGithubHovered
                            ? const ImageIcon(
                                // color: Colors.black,
                                AssetImage('assets/icons/github-black.png'),
                                size: 40,
                              )
                            : const ImageIcon(
                                color: Colors.white,
                                AssetImage('assets/icons/github-white.png'),
                                size: 40,
                              ),
                        const SizedBox(height: 10),
                        Text(
                          'Github',
                          style: TextStyle(
                            fontFamily: 'Firs Sans',
                            fontSize: 18,
                            color:
                                isGithubHovered ? Colors.black : Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
                child: GestureDetector(
              onTap: () async {
                await launchUrl(
                    Uri.parse('https://www.linkedin.com/in/parasjangid11/'),
                    // mode: LaunchMode.externalApplication,
                    webOnlyWindowName: '_blank');
              },
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isLinkedinHovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isLinkedinHovered = false;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                    color: isLinkedinHovered
                        ? const Color.fromRGBO(231, 229, 228, 1)
                        : const Color.fromRGBO(25, 25, 23, 1),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: !isLinkedinHovered
                          ? const Color.fromRGBO(231, 229, 228, 1)
                          : const Color.fromRGBO(25, 25, 23, 1),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLinkedinHovered
                          ? const ImageIcon(
                              // color: Colors.black,
                              AssetImage('assets/icons/linkedin-black.png'),
                              size: 40,
                            )
                          : const ImageIcon(
                              color: Colors.white,
                              AssetImage('assets/icons/linkedin-white.png'),
                              size: 40,
                            ),
                      const SizedBox(height: 10),
                      Text(
                        'Linkedin',
                        style: TextStyle(
                          fontFamily: 'Firs Sans',
                          fontSize: 18,
                          color:
                              isLinkedinHovered ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            ResponsiveRowColumnItem(
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(
                      Uri.parse(
                          'https://www.instagram.com/paras.jangid_?igsh=MWY0dWJyOHJhMnFlcA=='),
                      // mode: LaunchMode.externalApplication,
                      webOnlyWindowName: '_blank');
                },
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isinstaHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isinstaHovered = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: isinstaHovered
                          ? const Color.fromRGBO(231, 229, 228, 1)
                          : const Color.fromRGBO(25, 25, 23, 1),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: !isinstaHovered
                            ? const Color.fromRGBO(231, 229, 228, 1)
                            : const Color.fromRGBO(25, 25, 23, 1),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isinstaHovered
                            ? const ImageIcon(
                                // color: Colors.black,
                                AssetImage('assets/icons/instagram-black.png'),
                                size: 40,
                              )
                            : const ImageIcon(
                                color: Colors.white,
                                AssetImage('assets/icons/instagram-white.png'),
                                size: 40,
                              ),
                        const SizedBox(height: 10),
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontFamily: 'Firs Sans',
                            fontSize: 18,
                            color: isinstaHovered ? Colors.black : Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
