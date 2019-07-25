import 'package:flutter/material.dart';
import 'package:hero_profile/models/movie.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

class MovieDetailPage extends StatefulWidget {
  final Movie movie;

  MovieDetailPage(this.movie) : assert(movie != null);

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends BasePageState<MovieDetailPage> {
  Movie get _movie => widget.movie;

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 1 / 3.5,
            brightness: Brightness.light,
            floating: true,
            pinned: true,
            flexibleSpace: Hero(
                tag: _movie.thumbNail,
                child: Image.network(
                  _movie.thumbNail,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                )),
          ),SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
