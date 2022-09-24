import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/rounded_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        child: Icon(Icons.arrow_back),
        hoverColor: Colors.blueAccent,
      ),
      backgroundColor: const Color.fromARGB(255, 3, 158, 162),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height / 10,
            ),
            Text(
              'Medinow',
              style: GoogleFonts.lato(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              'Meditate With Us!',
              style: GoogleFonts.lato(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Container(
              height: Get.height / 15,
            ),
            const RoundedButtonWPadding(
              text: 'Sign with Apple',
            ),
            const RoundedButtonWPadding(
              text: 'Continue with Email or Phone',
              bgColor: Color.fromARGB(255, 205, 253, 254),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Continue with Google',
                style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 205, 253, 254),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: Get.height / 15,
            ),
            Expanded(child: Image.asset('assets/img/dude.png')),
            // Image.network('https://random.imagecdn.app/300/200')
          ],
        ),
      ),
    );
  }
}
