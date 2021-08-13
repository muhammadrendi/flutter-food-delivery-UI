import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_apps/services/provider/general_provider.dart';

import '../../../constants.dart';

class CategoriesButton extends ConsumerWidget {
  const CategoriesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ItemButton(
          text: "Beef",
          index: 0,
        ),
        ItemButton(
          text: "Vegetables",
          index: 1,
        ),
        ItemButton(
          text: "Chicken",
          index: 2,
        ),
      ],
    );
  }
}

class ItemButton extends ConsumerWidget {
  const ItemButton({
    Key? key,
    required this.index,
    required this.text,
  }) : super(key: key);

  final int index;
  final String text;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final indexButton = watch(categoriesButtonProvider).state;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () =>
          context.read(categoriesButtonProvider.notifier).state = index,
      child: Container(
        width: 110,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              text,
              style: GoogleFonts.getFont('Poppins',
                  color: index == indexButton ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: index == indexButton ? primaryColor : Colors.white),
      ),
    );
  }
}
