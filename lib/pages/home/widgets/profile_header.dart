import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/user.jpg'))),
        ),
        SizedBox(width: 10),
        Text(
          "Diablo",
          style: GoogleFonts.getFont('Poppins',
              fontWeight: FontWeight.w600, fontSize: 12),
        )
      ],
    );
  }
}
