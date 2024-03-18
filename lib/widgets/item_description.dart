import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDescriptionScreen extends StatefulWidget {
  const ItemDescriptionScreen(
      {super.key, required this.imgUrls, required this.title});
  final String imgUrls, title;
  @override
  State<ItemDescriptionScreen> createState() => _ItemDescriptionScreenState();
}

class _ItemDescriptionScreenState extends State<ItemDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    bool? isChecked = false;

    String selectedItem = '1';
    List<String> dropdownItems = ['1', '2', '3', '4', '5', '6'];

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
              Column(
                children: [
                  Image.asset(
                    'assets/images/coffee3.png',
                    height: height * 0.40,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                  GlossyContainer(
                    height: height * 0.6,
                    width: width,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.03),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    widget.title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
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
                                            color: Colors.grey,
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
                                ],
                              ),
                              Container(
                                height: height * 0.06,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DropdownButton<String>(
                                      value: selectedItem,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      elevation: 16,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedItem = newValue!;
                                        });
                                      },
                                      items: dropdownItems
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white54),
                            ),
                          ),
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Choice of Cup Filling',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.white54),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * 0.015),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02, vertical: 3),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    'Full',
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white54),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02, vertical: 3),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    '1/2 Full',
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02, vertical: 3),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    '3/4 Full',
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02, vertical: 3),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Text(
                                    '1/4 Full',
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            margin: EdgeInsets.only(top: height * 0.01),
                            child: Text(
                              'Choice of Milk',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white54),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CustomColumn(
                                      title1: 'Skim Milk',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Almond Milk',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Soy Milk',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Lactose  Milk',
                                      url1: 'assets/images/switch_1.png'),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomColumn(
                                      title1: 'Skim Milk',
                                      url1: 'assets/images/switch_2.png'),
                                  CustomColumn(
                                      title1: 'Almond Milk',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Soy Milk',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Lactose Milk',
                                      url1: 'assets/images/switch_1.png'),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: width,
                            margin: EdgeInsets.only(top: height * 0.01),
                            child: Text(
                              'Choice of Sugar',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white54),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CustomColumn(
                                      title1: 'Sugar X1',
                                      url1: 'assets/images/switch_1.png'),
                                  CustomColumn(
                                      title1: 'Sugar X2',
                                      url1: 'assets/images/switch_1.png'),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomColumn(
                                      title1: '½ Sugar',
                                      url1: 'assets/images/switch_2.png'),
                                  CustomColumn(
                                      title1: 'No Sugar',
                                      url1: 'assets/images/switch_1.png'),
                                ],
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * 0.02),
                            child: GlossyContainer(
                              height: height * 0.08,
                              width: width * 0.9,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                margin: EdgeInsets.only(top: height * 0.01),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.blue,
                                          value: isChecked,
                                          tristate: true,
                                          side: const BorderSide(
                                              width: 1, color: Colors.white54),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          'High Priority',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              color: Colors.grey),
                                        ),
                                        Icon(
                                          Icons.error,
                                          color: Colors.red.shade400,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: width * 0.35,
                                      height: height * 0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Submit',
                                            style: TextStyle(
                                                fontFamily: GoogleFonts.inter()
                                                    .fontFamily,
                                                fontSize: 16,
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w700),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomColumn extends StatelessWidget {
  CustomColumn({super.key, required this.title1, required this.url1});

  String title1, url1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
        width: width * 0.4,
        height: height * 0.03,
        child: Row(
          children: [
            Image.asset(
              url1,
              height: height * 0.02,
              width: width * 0.05,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              child: Text(
                title1,
                style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey.shade200),
              ),
            )
          ],
        ));
  }
}
