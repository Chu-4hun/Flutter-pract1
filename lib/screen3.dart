import 'package:flutter/material.dart';
import 'package:flutter_pract1/utilis/rounded_button_w_padding.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: Get.height /15 ,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: () {}, child: Text('All')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: () {}, child: Text('All')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: () {}, child: Text('All')),
                  ),
                ],
              ),
            ),
            Sc3_card(),
            SizedBox(
              height: 200.0,
              child: GridView.count(
                childAspectRatio: 166 / 210,
                shrinkWrap: true,
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
            ),
          ],
        ),
      ),
    );
  }
}
