import 'package:flutter/material.dart';
import 'package:flutter_pract1/utilis/screen3_card.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        child: Icon(Icons.arrow_back),
        hoverColor: Colors.blueAccent,
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('All'),
                          style: _buttonStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Bible In a Year'),
                          style: _buttonStyle2),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Dailies'),
                          style: _buttonStyle2),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Minutes'),
                          style: _buttonStyle2),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text('November'),
                          style: _buttonStyle2),
                    ),
                  ],
                ),
              ),
            ),
            Sc3_card(),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 10 / 11,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              clipBehavior: Clip.none,
              children: [
                Sc3_card(),
                Sc3_card(),
                Sc3_card(),
                Sc3_card(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

ButtonStyle _buttonStyle = OutlinedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  foregroundColor: Colors.white,
  backgroundColor: const Color.fromARGB(255, 3, 158, 162),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))),
);
ButtonStyle _buttonStyle2 = OutlinedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  foregroundColor: const Color.fromARGB(255, 3, 158, 162),
  backgroundColor: const Color.fromARGB(255, 230, 254, 255),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))),
);
