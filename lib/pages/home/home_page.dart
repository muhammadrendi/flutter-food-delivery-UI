import 'package:flutter/material.dart';
import 'package:pizza_apps/constants.dart';
import 'package:pizza_apps/models/PizzaModel.dart';
import 'package:pizza_apps/pages/details/detail_page.dart';
import 'package:pizza_apps/pages/home/widgets/card_item.dart';
import 'package:pizza_apps/pages/home/widgets/header_and_title.dart';
import 'package:pizza_apps/pages/home/widgets/search_widget.dart';
import 'package:pizza_apps/pages/home/widgets/title_categories.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double price = 19.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: secondaryColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      HeaderAndTitle(),
                      SizedBox(height: 20),
                      SearchWidget(),
                      SizedBox(height: 30),
                      TitleCategories(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return CardItem(
                        pizzas: pizza[index],
                        press: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(milliseconds: 300),
                                  reverseTransitionDuration:
                                      const Duration(milliseconds: 500),
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      FadeTransition(
                                          child:
                                              DetailPage(pizzas: pizza[index]),
                                          opacity: animation)));
                        },
                      );
                    },
                    childCount: pizza.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
