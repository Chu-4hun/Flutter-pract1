import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pract1/screen1.dart';
import 'package:flutter_pract1/screen2.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utilis/reusable_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: [
            MenuButton(text: '1',press: (() => Get.to(() => Screen1())),),
            MenuButton(text: '2',press: (() => Get.to(() => Screen2())),),
            MenuButton(text: '3',press: (() => Get.to(() => Screen1())),),
            MenuButton(text: '4',press: (() => Get.to(() => Screen1())),),
          ]),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ReusableCard(
        color: Colors.blue,
        onPress: press,
        child: Center(
          child: Text(text ?? '1',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
