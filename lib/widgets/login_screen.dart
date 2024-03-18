import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seequenze_task/widgets/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
            Positioned(
              left: width * 0.10,
              top: height * 0.10,
              child: GlossyContainer(
                height: height * 0.85,
                width: width * 0.8,
                opacity: 0.1,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(
                    width: 1, color: const Color.fromARGB(0, 0, 0, 1)),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Color.fromARGB(0, 0, 0, 25),
                  ),
                ],
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.03, top: height * 0.03),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/login_symbol.png',
                            height: height * 0.12,
                            width: width * 0.3,
                          ),
                          Text(
                            'Swift',
                            style: TextStyle(
                              fontFamily: GoogleFonts.raleway().fontFamily,
                              color: Colors.white,
                              fontSize: 64,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Cafe',
                            style: TextStyle(
                                fontFamily: GoogleFonts.raleway().fontFamily,
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Latte but never late",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 14,
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'User Name',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.inter().fontFamily)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                      child: TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.inter().fontFamily)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Container(
                        height: height * 0.055,
                        width: width * 0.55,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 15,
                                  offset: Offset(2, 2),
                                  spreadRadius: -2,
                                  color: Color.fromARGB(0, 0, 0, 65))
                            ],
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(77, 43, 26, 1),
                                Color.fromARGB(167, 116, 90, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(33)),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Container(
                        height: height * 0.055,
                        width: width * 0.55,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 15,
                                  offset: Offset(2, 2),
                                  spreadRadius: 0,
                                  color: Color.fromARGB(0, 0, 0, 65))
                            ],
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(246, 207, 203, 203),
                            ),
                            borderRadius: BorderRadius.circular(33)),
                        child: Center(
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
