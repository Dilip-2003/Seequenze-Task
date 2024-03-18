import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glossy/glossy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:seequenze_task/widgets/item_description.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    int a1 = (0.5 * 255).round();
    int a2 = (0.14 * 255).round();
    int a3 = (0.38 * 255).round();

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FirstPart(),
                    SizedBox(height: height * 0.01),
                    SecondPart(width: width),
                    SizedBox(height: height * 0.04),
                    ThirdPart(height: height, width: width),
                    SizedBox(height: height * 0.02),
                    Text(
                      'Get it instantly',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.02),
                    const FourthPart(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: GlossyContainer(
                  height: height * 0.09,
                  width: width * 0.8,
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(214, 51, 51, 51),
                  opacity: 0.5,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        color: Color.fromARGB(63, 0, 0, 0))
                  ],
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(1, 45, 45, 45),
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(1, 94, 94, 94)),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: -2,
                                    offset: Offset(0, 2),
                                    color: Color.fromARGB(40, 255, 255, 255))
                              ],
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.asset(
                            'assets/images/home.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Image.asset(
                          'assets/images/contact.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/fill_1.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/group_3.png',
                          height: 55,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/Vector.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirstPart extends StatelessWidget {
  const FirstPart({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String getCurrentDate() {
      var now = DateTime.now();
      var formatter = DateFormat('dd/MM/yyyy');
      return formatter.format(now);
    }

    return Padding(
      padding: EdgeInsets.only(left: width * 0.04, top: height * 0.05),
      child: Row(
        children: [
          const Text(
            '👋',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(width: width * 0.05),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: width * 0.03),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/circle_avatar.png'),
            backgroundColor: Color.fromARGB(1, 113, 171, 122),
            radius: 28,
          )
        ],
      ),
    );
  }
}

class SecondPart extends StatelessWidget {
  const SecondPart({Key? key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var searchController = TextEditingController();
    return Container(
      width: width * 0.9,
      height: height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
          SizedBox(
            width: width * 0.5,
            height: height * 0.03,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search favorite Beverages',
                hintStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/fill.png',
            height: height * 0.03,
            width: width * 0.1,
          )
        ],
      ),
    );
  }
}

class ThirdPart extends StatelessWidget {
  const ThirdPart({Key? key, required this.height, required this.width});

  final double height;
  final double width;

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

    int a4 = (0.45 * 255).round();
    int a5 = (.25 * 255).round();
    return Container(
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
                fontFamily: GoogleFonts.inter().fontFamily,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.02),
            height: height * 0.32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: imgUrls.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDescriptionScreen(
                            imgUrls: imgUrls[index],
                            title: 'Hot Cappuccino',
                          ),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
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
                                left: width * 0.04, top: height * 0.03),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(12, 12),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color: Color.fromARGB(a5, 29, 29, 29),
                                )
                              ],
                            ),
                            child: Image.asset(
                              imgUrls[index],
                              height: height * 0.16,
                              width: width * 0.35,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Center(
                            child: Text(
                              'Hot Cappuccino',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade400,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: width * 0.38,
                                height: height * 0.045,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: width * 0.05),
                                      child: Text(
                                        'Espresso, Steamed Milk',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '4.9' + '⭐' + '(458)',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: height * 0.032,
                                width: width * 0.07,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                ),
                                child: const Icon(
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
    );
  }
}

class FourthPart extends StatelessWidget {
  const FourthPart({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgUrls = [
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
      'assets/images/coffee1.png',
      'assets/images/coffee2.png',
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ...imgUrls.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ItemDescriptionScreen(imgUrls: e, title: 'Lattè'),
                  ));
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: height * 0.03,
                      right: height * 0.03,
                      top: height * 0.01),
                  child: GlossyContainer(
                    height: height * 0.18,
                    width: width,
                    borderRadius: BorderRadius.circular(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.55,
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Column(
                            children: [
                              Text(
                                'Lattè',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: width * 0.35,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4.9 ' + ' ⭐ ' + '(458)',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/veg_symbol.png',
                                      height: height * 0.03,
                                      width: width * 0.04,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width * 0.1),
                                child: Text(
                                  'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              // height: height * 0.11,
                              margin: EdgeInsets.only(right: width * 0.04),
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: -1,
                                    offset: Offset(2, 2),
                                    color: Color.fromARGB(51, 0, 0, 0))
                              ]),
                              child: Image.asset(
                                e,
                                height: height * 0.1,
                                width: width * 0.2,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: width * 0.036,
                              child: Container(
                                width: width * 0.12,
                                height: height * 0.023,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}
