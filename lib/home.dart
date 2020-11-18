import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                          Padding(
                            padding: const EdgeInsets.all(70.0),
                            child: Column(
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
                                            "https://github.com/AbhishekDoshi26"),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      IconButton(
                                        icon: Image.asset(
                                          'assets/social_logo/gmail.png',
                                        ),
                                        iconSize: 40,
                                        onPressed: () => launch(
                                            "mailto:adoshi26.ad@gmail.com"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                Text(
                  "A bit about me💖!",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                        fontSize: screenWidth / 30, color: Colors.blue),
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
                SizedBox(
                  height: 200.0,
                ),
                Text(
                  "Skills💻",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                        fontSize: screenWidth / 30, color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Card(
                    color: Color(0xff424242),
                    elevation: 20.0,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 500.0,
                          width: screenWidth / 3,
                          child: GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                            shrinkWrap: true,
                            children: List.generate(
                              9,
                              (index) => Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Image.asset(
                                  'assets/skills/$index.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Github Stats💻!",
                              style: GoogleFonts.lobster(
                                textStyle: TextStyle(
                                    fontSize: screenWidth / 40,
                                    color: Colors.white60),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Image.network(
                              "https://github-readme-stats.vercel.app/api?username=AbhishekDoshi26&show_icons=true&theme=dark&line_height=27",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.0,
                ),
                Text(
                  "Projects💻",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                        fontSize: screenWidth / 30, color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Container(
                    height: 400.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ProjectHome(
                          pname: 'contactus',
                          url: 'https://pub.dev/packages/contactus',
                          desc:
                              'I have published my own Flutter package named contactus.\ncontactus helps the developer to easily add their contact details which can be\nintegrated to flutter app for android, ios and for web.',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'productly',
                          url:
                              'https://play.google.com/store/apps/details?id=abhishekdoshi.netlify.productly',
                          desc:
                              'Productly is an app that will help users\nto know the product manufacturing country!!\nUsers can scan the barcode of the product and the\napp will display the country name.',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'kposhak',
                          url:
                              'https://play.google.com/store/apps/details?id=abhishekdoshi.netlify.kposhak',
                          desc:
                              'It is an app for K Poshak NX, Valsad\nUsing this app, users can view the new stock, download images and also contact the owner!!\nIn simple words, it is an online gallery app with an Admin Side too!!\nThe Admin can add new images, add multiple images and delete images\n',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'shopping',
                          url:
                              'https://github.com/AbhishekDoshi26/Shoppping-UI',
                          desc:
                              'It\'s UI Implementation for Shopping App using Flutter\n',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'superpedia',
                          url: 'https://github.com/AbhishekDoshi26/superpedia',
                          desc:
                              'Superheroes + Wikipedia = Superpedia!!\nIt gives Power Stats about various superheroes.\nUsers can also download wallpaper of that hero!\n',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'whatsapp',
                          url: 'https://github.com/AbhishekDoshi26/whatsapp_dm',
                          desc:
                              'WhatsApp DM is an app that allows users\nto send message to unsaved contact number on WhatsApp!!\n',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'Lifeline',
                          url: 'https://github.com/HAC-2020/Code-Crackers',
                          desc:
                              'Lifeline is an app to connect Blood, Plasma,\nPlatelets Donors with those in need.',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProjectHome(
                          pname: 'wallpaper',
                          url: 'https://github.com/AbhishekDoshi26/wallpaper',
                          desc:
                              'It is a simple app that provides random HD Wallpapers\nUsing this app, users can view the wallpapers, download it and\nset wallpaper on home or lockscreen or both!',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_right_rounded),
                                iconSize: 50.0,
                                color: Colors.white,
                                onPressed: () => launch(
                                    'https://github.com/AbhishekDoshi26'),
                              ),
                              Text("Check more projects!"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  child: ContactUsBottomAppBar(
                    textColor: Colors.white60,
                    backgroundColor: Colors.transparent,
                    email: 'adoshi26.ad@gmail.com',
                    companyName: 'Abhishek Doshi',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectHome extends StatelessWidget {
  String pname, url, desc;
  ProjectHome({this.pname, this.url, this.desc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(url),
      child: Tooltip(
        message: desc + '\n\nClick on the image to know more!!',
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          //elevation: 50.0,
          color: Colors.transparent,
          child: Image.asset('assets/projects/$pname.png'),
        ),
      ),
    );
  }
}
