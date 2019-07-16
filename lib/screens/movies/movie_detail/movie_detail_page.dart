import 'package:flutter/material.dart';
import 'package:hero_profile/models/movie.dart';

class MovieDetailPage extends StatefulWidget {
  final Movie movie;

  MovieDetailPage(this.movie) : assert(movie != null);

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  Movie get _movie => widget.movie;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 1 / 3,
          flexibleSpace: Hero(
              tag: _movie.imagePath,
              child: Image.network(
                _movie.imagePath,
                alignment: Alignment.center,
                fit: BoxFit.fill,
              )),
        ),SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
