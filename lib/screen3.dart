import 'package:flutter/material.dart';
import 'package:flutter_pract1/utilis/screen3_card.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Meditate',
          style: GoogleFonts.lato(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        child: Icon(Icons.arrow_back),
        hoverColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Sc3_card(),
              GridView.count(
                childAspectRatio: 166 / 210,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                clipBehavior: Clip.none,
                children: [
                  Container(height: 200, child: Sc3_card()),
                  Sc3_card(),
                  Sc3_card(),
                  Sc3_card(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
