import 'package:flutter/material.dart';

import 'widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Popular Recipes",
              style: TextStyle(
                color: Color.fromRGBO(203, 202, 193, 1),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CardFood(
                path: 'assets/imagen.jpg',
                subtitulo: '20 differents kinds',
                titulo: 'Friday Night Pastas',
              ),
              CardFood(
                path: 'assets/imagen1.jpg',
                subtitulo: '20 differents kinds',
                titulo: 'Friday Night Pastas',
              ),
              CardFood(
                path: 'assets/imagen2.png',
                subtitulo: '20 differents kinds',
                titulo: 'Friday Night Pastas',
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation());
  }
}

class CardFood extends StatelessWidget {
  const CardFood(
      {Key? key,
      required this.path,
      required this.titulo,
      required this.subtitulo})
      : super(key: key);
  final String path;
  final String titulo;
  final String subtitulo;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: _size.height * 0.4,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            color: Colors.red),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                titulo,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitulo,
                style: TextStyle(
                  color: Colors.white.withOpacity(.5),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
