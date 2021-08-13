import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_apps/pages/home/widgets/header.dart';

class HeaderAndTitle extends StatelessWidget {
  const HeaderAndTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Column(
          children: [
            Row(
              children: [
                Text(
                  "Find The",
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w300, fontSize: 30),
                ),
                SizedBox(width: 10),
                Text(
                  "Best",
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Food",
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(width: 10),
                Text(
                  "for you.",
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w300, fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
