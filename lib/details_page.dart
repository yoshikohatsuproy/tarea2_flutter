import 'package:flutter/material.dart';

import 'widgets/bottom_navigation.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(203, 202, 193, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.mic_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text(
                  "Most Like Recipes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              CardListFood(),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, bottom: 20),
                child: Text(
                  "Popular Recipes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              CardListFood2()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation());
  }
}

class CardListFood2 extends StatelessWidget {
  const CardListFood2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: double.infinity,
        color: Colors.white.withOpacity(.9),
        child: Column(
          children: <Widget>[
            _food(
                title: "Ravioles",
                subtitle: "Pastas",
                number: "100 K",
                path: "assets/imagen.jpg"),
            _food(
                title: "Lasagna Vegana",
                subtitle: "Vegetariano",
                number: "100 K",
                path: "assets/imagen1.jpg"),
            _food(
                title: "Tallarines",
                subtitle: "Comida Ligera",
                number: "100 K",
                path: "assets/imagen2.png")
          ],
        ),
      ),
    );
  }
}

Widget _food({
  required String title,
  required String subtitle,
  required String number,
  required String path,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
      leading: Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: Column(
        children: [
          SizedBox(height: 5),
          Text(
            number,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Cooked",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ),
  );
}

class CardListFood extends StatelessWidget {
  const CardListFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _cardFood("assets/imagen.jpg", "Ravioles"),
          _cardFood("assets/imagen1.jpg", "Lasagna"),
          _cardFood("assets/imagen2.png", "Tallarines"),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

Widget _cardFood(String ruta, String titulo) {
  return Container(
    width: 160,
    margin: EdgeInsets.only(left: 15),
    height: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.withOpacity(.2),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(ruta), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              SizedBox(width: 2),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              SizedBox(width: 2),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              SizedBox(width: 2),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.black,
              ),
              SizedBox(width: 2),
              Icon(
                Icons.star_outline,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
