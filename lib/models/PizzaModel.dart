class Pizza {
  final String? title, description, imageResources, ratings;
  final double? price;

  Pizza(
      {this.title,
      this.description,
      this.imageResources,
      this.ratings,
      this.price});
}

List<Pizza> pizza = [
  Pizza(
      title: "Bolognaise Fusilli",
      description:
          "Bolognaise is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza01.png",
      ratings: "4.5",
      price: 19.0),
  Pizza(
      title: "Black Pepper Beef",
      description:
          "Beef is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza02.png",
      ratings: "4.5",
      price: 20.0),
  Pizza(
      title: "Mac ‘N Cheese",
      description:
          "Cheese is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza03.png",
      ratings: "4.5",
      price: 19.0),
  Pizza(
      title: "Chicken Delight",
      description:
          "Chicken is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza04.png",
      ratings: "4.5",
      price: 19.0),
  Pizza(
      title: "American Favourite",
      description:
          "American Favourite is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza05.png",
      ratings: "4.5",
      price: 25.0),
  Pizza(
      title: "Frankfurter BBG",
      description:
          "BBG is a meat-based sauce in Italian cuisine, typicalof the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.",
      imageResources: "assets/images/pizza06.png",
      ratings: "4.5",
      price: 20.0),
];
