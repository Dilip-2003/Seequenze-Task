import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> imgUrls = [
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
      'assets/images/cup2.png',
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    int a1 = (0.5 * 255).round();
    int a2 = (0.14 * 255).round();
    int a3 = (0.38 * 255).round();
    int a4 = (0.45 * 255).round();
    int a5 = (.25 * 255).round();
    var seachController = TextEditingController();
    String getCurrentDate() {
      var now = DateTime.now();
      var formatter = DateFormat('dd/MM/yyyy');
      return formatter.format(now);
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login_background.jpeg',
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
          GlossyContainer(
            height: height,
            width: width,
            border: Border.all(width: 1),
            gradient: GlossyLinearGradient(colors: [
              Color.fromARGB(a1, 255, 255, 255),
              Color.fromARGB(a2, 255, 255, 255),
              Color.fromARGB(a3, 255, 255, 255)
            ], opacity: 0.1),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.03),
                  width: width,
                  child: Row(
                    children: [
                      Text(
                        '👋',
                        style: TextStyle(fontSize: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.05, right: width * 0.03),
                        width: width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  getCurrentDate(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Joshua Scanlan',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/images/group_3.png',
                              height: height * 0.09,
                              width: width * 0.09,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        foregroundImage:
                            AssetImage('assets/images/circle_avatar.png'),
                        backgroundColor: Color.fromARGB(1, 113, 171, 122),
                        radius: 28,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.9,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width * 0.5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.40,
                                    height: height * 0.03,
                                    child: TextField(
                                      controller: seachController,
                                      decoration: InputDecoration(
                                        hintText: 'Search favorite Beverages',
                                        hintStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            fontFamily:
                                                GoogleFonts.inter().fontFamily),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/fill.png',
                              height: height * 0.03,
                              width: width * 0.1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(a4, 49, 49, 49),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Most Popular Beverages',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade400,
                                    fontFamily: GoogleFonts.inter().fontFamily),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(vertical: height * 0.02),
                              height: height * 0.32,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imgUrls.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: width * 0.02),
                                      child: GlossyContainer(
                                        height: height * 0.3,
                                        width: width * 0.5,
                                        opacity: 0.1,
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(5),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 0.04,
                                                  top: height * 0.03),
                                              decoration:
                                                  BoxDecoration(boxShadow: [
                                                BoxShadow(
                                                    offset: Offset(12, 12),
                                                    blurRadius: 10,
                                                    spreadRadius: 0,
                                                    color: Color.fromARGB(
                                                        a5, 29, 29, 29))
                                              ]),
                                              child: Image.asset(
                                                imgUrls[index],
                                                height: height * 0.16,
                                                width: width * 0.35,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Center(
                                              child: Text('Hot Cappuccino',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey.shade400,
                                                    fontFamily:
                                                        GoogleFonts.inter()
                                                            .fontFamily,
                                                  )),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: width * 0.38,
                                                  height: height * 0.045,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Center(
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: width *
                                                                      0.05),
                                                          child: Text(
                                                            'Espresso, Steamed Milk',
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily: GoogleFonts
                                                                        .inter()
                                                                    .fontFamily),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        '4.9' + '⭐' + '(458)',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                GoogleFonts
                                                                        .inter()
                                                                    .fontFamily),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: height * 0.032,
                                                  width: width * 0.07,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 22,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
