import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:portfolio/about.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          color: Color(0xff1e2122),
          height: double.infinity,
          width: double.infinity,
        ),
        Opacity(
          opacity: 0.3,
          child: CircularParticle(
            key: UniqueKey(),
            awayRadius: 50,
            numberOfParticles: 300,
            speedOfParticles: 1.5,
            height: screenHeight,
            width: screenWidth,
            onTapAnimation: true,
            particleColor: Colors.white.withAlpha(150),
            awayAnimationDuration: Duration(milliseconds: 600),
            maxParticleSize: 8,
            isRandSize: true,
            isRandomColor: true,
            randColorList: [
              Colors.red.withAlpha(210),
              Colors.white.withAlpha(210),
              Colors.yellow.withAlpha(210),
              Colors.green.withAlpha(210)
            ],
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            hoverColor: Colors.white,
            hoverRadius: 90,
            connectDots: false, //not recommended
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "I am Abhishek Doshi | ",
                                    style: GoogleFonts.lobster(
                                      textStyle: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: screenWidth / 30,
                                      ),
                                    ),
                                  ),
                                  TyperAnimatedTextKit(
                                      onTap: () {
                                        print("Tap Event");
                                      },
                                      text: [
                                        "Flutter Developer! 💙",
                                        "Community Lover! 🤝",
                                        "Leader! 🙋‍♂️",
                                      ],
                                      textStyle: GoogleFonts.lobsterTwo(
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 45,
                                          color: Colors.white,
                                        ),
                                      ),
                                      textAlign: TextAlign.start,
                                      alignment: AlignmentDirectional
                                          .topStart // or Alignment.topLeft
                                      ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 30.0),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Image.asset(
                                        'assets/social_logo/instagram.png',
                                      ),
                                      iconSize: 40,
                                      onPressed: () => launch(
                                          "https://www.instagram.com/abhishekdoshi26"),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    IconButton(
                                      icon: Image.asset(
                                        'assets/social_logo/twitter.png',
                                      ),
                                      iconSize: 40,
                                      onPressed: () => launch(
                                          "https://twitter.com/AbhishekDoshi26"),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    IconButton(
                                      icon: Image.asset(
                                        'assets/social_logo/linkedin.png',
                                      ),
                                      iconSize: 40,
                                      onPressed: () => launch(
                                          "https://www.linkedin.com/in/AbhishekDoshi26"),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    IconButton(
                                        icon: Image.asset(
                                          'assets/social_logo/github.png',
                                        ),
                                        iconSize: 40,
                                        onPressed: () => launch(
                                            "https://github.com/AbhishekDoshi26")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/main.png',
                              height: screenWidth / 2.2,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            'assets/images/scrolldown.gif',
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: Container(
                    height: screenHeight - 300,
                    width: screenWidth,
                    child: About(),
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 100,
                  // color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
