import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.getFont('Poppins',
          fontWeight: FontWeight.w500, fontSize: 16),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide:
                  BorderSide(color: Colors.white, style: BorderStyle.solid)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide:
                  BorderSide(color: Colors.white, style: BorderStyle.solid)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide:
                  BorderSide(color: Colors.white, style: BorderStyle.solid)),
          suffixIcon: Icon(
            Icons.list,
            color: Colors.black,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Search your food",
          hintStyle: GoogleFonts.getFont('Poppins',
              fontWeight: FontWeight.w500, fontSize: 16)),
    );
  }
}
