import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'package:movie_app_2/constans.dart';
import 'package:movie_app_2/models/movie.dart';
import 'package:movie_app_2/screens/home/components/categories.dart';
import 'package:movie_app_2/screens/home/components/genres.dart';
import 'package:movie_app_2/screens/home/components/movie_card.dart';
import 'package:movie_app_2/screens/home/components/movies_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: DefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}
