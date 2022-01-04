import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app_2/models/movie.dart';

import '../../../constans.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
      child: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [DefaultShadow],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.poster!),
              ),
            )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: DefaultPadding / 2),
            child: Text(
              movie.title!,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 20,
              ),
              SizedBox( width: DefaultPadding /8,),
              Text(
                "${movie.rating}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
