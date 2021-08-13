import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_apps/constants.dart';
import 'package:pizza_apps/models/PizzaModel.dart';
import 'package:pizza_apps/services/provider/general_provider.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.pizzas}) : super(key: key);

  final Pizza pizzas;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final indexCategories = watch(categoriesDetailPageProvider).state;
      return SafeArea(
        child: Scaffold(
          backgroundColor: primaryColor,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: 414,
                  height: 236,
                  decoration: BoxDecoration(color: primaryColor),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(41),
                          topRight: Radius.circular(41)),
                      color: secondaryColor),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - cardDetailHeight,
                ),
              ),
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 220,
                              height: 220,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: primaryColor.withOpacity(0.40),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Hero(
                              tag: widget.pizzas.title!,
                              child: Image.asset(
                                widget.pizzas.imageResources!,
                                width: 220,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\$" + widget.pizzas.price!.toString(),
                        style: GoogleFonts.getFont("Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 131,
                        height: 48,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(28)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                splashColor: Colors.white,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            Text(
                              "1",
                              style: GoogleFonts.getFont("Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.pizzas.title!,
                          style: GoogleFonts.getFont("Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.pizzas.description!,
                        style: GoogleFonts.getFont("Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: priceColor),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Reed More >",
                            style: GoogleFonts.getFont("Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Spacer(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              pizza.length,
                              (index) => InkWell(
                                onTap: () => context
                                    .read(categoriesDetailPageProvider.notifier)
                                    .state = index,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 36),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: indexCategories == index
                                                ? primaryColor
                                                : Colors.transparent,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.circular(14),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        pizza[index].imageResources!,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          child: Text(
                            "Add To Cart",
                            style: GoogleFonts.getFont("Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 15,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
