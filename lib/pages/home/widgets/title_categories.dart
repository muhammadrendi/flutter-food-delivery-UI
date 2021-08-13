import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_apps/pages/home/widgets/categories_button.dart';

class TitleCategories extends StatelessWidget {
  const TitleCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: GoogleFonts.getFont('Poppins',
              fontWeight: FontWeight.w700, fontSize: 14),
        ),
        SizedBox(height: 20),
        CategoriesButton()
      ],
    );
  }
}
