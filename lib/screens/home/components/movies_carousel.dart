import 'package:flutter/material.dart';
import 'package:movie_app_2/models/movie.dart';
import 'package:movie_app_2/screens/home/components/movie_card.dart';
import 'dart:math' as math;

import '../../../constans.dart';

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController = PageController();
  int initialPage = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: DefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value){
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child){
      double value = 0;
      if(_pageController.position.haveDimensions){
        value = index - _pageController.page!;
        value = (value * 0.038.clamp(-1, 1));
      }
       return AnimatedOpacity(
         duration: Duration(milliseconds: 350),
         opacity: initialPage == index ? 1 : 0.4,
         child: Transform.rotate(
          angle: math.pi * value,
         child: MovieCard(movie: movies[index]),
         ),
       ); 
    },
  );
}
