import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_apps/constants.dart';
import 'package:pizza_apps/models/PizzaModel.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.pizzas,
    required this.press,
  }) : super(key: key);

  final Pizza pizzas;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 167,
        height: 226,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27), color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: primaryColor.withOpacity(0.34),
                              blurRadius: 4.0,
                              offset: Offset(0, 4))
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pizzas.title!,
                      child: Image.asset(
                        pizzas.imageResources!,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  pizzas.title!,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pizzas.price!.toString(),
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 12,
                            color: priceColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: primaryColor,
                            size: 15,
                          ),
                          Text(
                            pizzas.ratings!,
                            style: GoogleFonts.getFont("Poppins",
                                fontSize: 10,
                                color: primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(27)),
                    color: primaryColor),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/images/like.svg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
