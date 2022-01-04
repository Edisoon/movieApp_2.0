import 'package:flutter/material.dart';
import 'package:movie_app_2/components/genre.dart';

import '../../../constans.dart';


class Genres extends StatelessWidget {
  List<String> genres = [
    "Accion",
    "Crimen",
    "Comedia",
    "Drama",
    "Horror",
    "Animacion"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: DefaultPadding / 3),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(genre: genres[index],),
      ),
    );
  }
}
