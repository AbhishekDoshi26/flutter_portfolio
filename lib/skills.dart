import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key key,
    @required this.screenWidth,
    @required this.isSmallScreen,
  }) : super(key: key);

  final double screenWidth;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff424242),
      elevation: 20.0,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: isSmallScreen
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 300.0,
                  width: 500.0,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      9,
                      (index) => Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/skills/$index.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Github Stats💻!",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                        fontSize: isSmallScreen ? 30 : screenWidth / 40,
                        color: Colors.white60),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://camo.githubusercontent.com/1e7d12742695e8e8c71209b817feae12355e40d63496539f77f2c93e3213787f/68747470733a2f2f6769746875622d726561646d652d73746174732e76657263656c2e6170702f6170693f757365726e616d653d416268697368656b446f73686932362673686f775f69636f6e733d74727565267468656d653d6461726b266c696e655f6865696768743d3237",
                  ),
                ),
              ],
            )
          : Row(
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
                            fontSize: isSmallScreen ? 35 : screenWidth / 40,
                            color: Colors.white60),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.network(
                      "https://camo.githubusercontent.com/1e7d12742695e8e8c71209b817feae12355e40d63496539f77f2c93e3213787f/68747470733a2f2f6769746875622d726561646d652d73746174732e76657263656c2e6170702f6170693f757365726e616d653d416268697368656b446f73686932362673686f775f69636f6e733d74727565267468656d653d6461726b266c696e655f6865696768743d3237",
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
