import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  About({this.isSmallScreen});
  bool isSmallScreen;
  List<String> welcomeImages = [
    "assets/images/flutter.png",
    "assets/images/community.png",
    "assets/images/leader.png",
  ];
  List<String> data = [
    "I am Flutter Developer who has developed 30+ apps!💻\nOne of my app also got featured in Android Live Stream!💚\nI am also the Semi-Finalist for Build For Digital India,2020 organized by Google!\n\nPassionate about coding and creating apps!✨",
    "I love to be part of communities, connecting with like minded people and helping others.🤝\nI am also the Organizer of Flutter Valsad,💙\na local Flutter Community in Valsad, Gujarat, India!",
    "Its all about Code-Build-Deploy🌟.\nBecause starting something small eventually leads to something big🎉.\nIts all about changing lives through code and I love to lead the change.\n\nWhenever there will be line of opportunities, I will be the first one!💖"
  ];
  List<String> title = [
    "Flutter Developer! 💙",
    "Community Lover! 🤝",
    "Leader! 🙋‍♂️",
  ];
  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    return Tooltip(
      message: "Swipe card to check out more💖💖",
      height: 50.0,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height - 100,
              child: Card(
                elevation: 20.0,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: isSmallScreen
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            child: Image.asset(
                              '${welcomeImages[2]}',
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            '${title[2]}',
                            style: GoogleFonts.lobster(
                              textStyle:
                                  TextStyle(fontSize: 30, color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${data[2]}',
                              softWrap: true,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            child: Image.asset(
                              '${welcomeImages[2]}',
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${title[2]}',
                                  style: GoogleFonts.lobster(
                                    textStyle: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                40,
                                        color: Colors.blue),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                ),
                                Text(
                                  '${data[2]}',
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              90),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          TinderSwapCard(
            swipeUp: true,
            swipeDown: true,
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length - 1,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 1.2,
            minWidth: MediaQuery.of(context).size.width * 0.89,
            minHeight: MediaQuery.of(context).size.height * 1.19,
            cardBuilder: (context, index) => Card(
              elevation: 20.0,
              shadowColor: Colors.white60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: isSmallScreen
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          child: Image.asset(
                            '${welcomeImages[index]}',
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Text(
                          '${title[index]}',
                          style: GoogleFonts.lobster(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${data[index]}',
                            softWrap: true,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 30),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          child: Image.asset(
                            '${welcomeImages[index]}',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${title[index]}',
                                style: GoogleFonts.lobster(
                                  textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              40,
                                      color: Colors.blue),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                              ),
                              Text(
                                '${data[index]}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 90),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
            },
          ),
        ],
      ),
    );
  }
}
