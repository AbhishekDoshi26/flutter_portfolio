import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLanding extends StatelessWidget {
  const HomeLanding({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = screenWidth < 800;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: [
          isSmallScreen
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/main.png',
                        height: screenHeight / 2.5,
                      ),
                    ),
                    IntroSocial(
                      screenWidth: screenWidth,
                      isSmallScreen: isSmallScreen,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IntroSocial(
                      screenWidth: screenWidth,
                      isSmallScreen: isSmallScreen,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/images/main.png',
                        height: screenWidth / 2.5,
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
                height: isSmallScreen ? 40.0 : 70.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroSocial extends StatelessWidget {
  const IntroSocial({
    Key key,
    @required this.screenWidth,
    @required this.isSmallScreen,
  }) : super(key: key);

  final double screenWidth;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(isSmallScreen ? 50.0 : 70.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isSmallScreen
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "I am Abhishek Doshi | ",
                        style: GoogleFonts.lobster(
                          textStyle: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 25,
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
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                    ],
                  ),
                )
              : Row(
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
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: isSmallScreen
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/social_logo/instagram.png',
                  ),
                  iconSize: isSmallScreen ? 30 : 40,
                  onPressed: () =>
                      launch("https://www.instagram.com/abhishekdoshi26"),
                ),
                SizedBox(
                  width: isSmallScreen ? 5.0 : 30.0,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/social_logo/twitter.png',
                  ),
                  iconSize: isSmallScreen ? 30 : 40,
                  onPressed: () =>
                      launch("https://twitter.com/AbhishekDoshi26"),
                ),
                SizedBox(
                  width: isSmallScreen ? 5.0 : 30.0,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/social_logo/linkedin.png',
                  ),
                  iconSize: isSmallScreen ? 30 : 40,
                  onPressed: () =>
                      launch("https://www.linkedin.com/in/AbhishekDoshi26"),
                ),
                SizedBox(
                  width: isSmallScreen ? 5.0 : 30.0,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/social_logo/github.png',
                  ),
                  iconSize: isSmallScreen ? 30 : 40,
                  onPressed: () => launch("https://github.com/AbhishekDoshi26"),
                ),
                SizedBox(
                  width: isSmallScreen ? 5.0 : 30.0,
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/social_logo/gmail.png',
                  ),
                  iconSize: isSmallScreen ? 30 : 40,
                  onPressed: () => launch("mailto:adoshi26.ad@gmail.com"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: RaisedButton(
              hoverColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/bmc.png',
                  height: 30.0,
                ),
              ),
              onPressed: () =>
                  launch('https://www.buymeacoffee.com/abhishekdoshi26'),
            ),
          ),
        ],
      ),
    );
  }
}
