import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utilis/rounded_button_w_padding.dart';
import 'utilis/song_card.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        child: Icon(Icons.arrow_back),
        hoverColor: Colors.blueAccent,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 15),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network('https://random.imagecdn.app/400/250')),
            ),
            Container(height: 10),
            Text(
              'Peter Mach',
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            Text(
              'Mind Deep Relax',
              style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
            Container(height: 10),
            AutoSizeText(
              maxLines: 3,
              'Перед смертью люди думают о своем прошлом, как будто ищут доказательств, что они действительно жили.',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w300, color: Colors.black),
            ),
            RoundedButtonWPadding(
              verticalPadding: 20,
              horizontalPadding: 0,
              bgColor: Color.fromARGB(255, 3, 158, 162),
              fgColor: Colors.white,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.play_arrow_outlined),
                Text('  Play Next Session',
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600)),
              ]),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                SongCard(
                    title: 'Sweet memories', buttonColor: Colors.blue.shade600),
                const SongCard(title: 'A Day Dream', buttonColor: Colors.green),
                const SongCard(
                    title: 'Mind Explore', buttonColor: Colors.orange),
              ],
            )
          ],
        ),
      )),
    );
  }
}
