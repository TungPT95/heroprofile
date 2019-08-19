import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic_movie.dart';
import 'package:hero_profile/models/movie.dart';
import 'package:hero_profile/repository/comic_movie_repos/comic_movie_repos.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/screens/movies/movie_detail/movie_detail_page.dart';
import 'package:hero_profile/widgets/carousel_pageview/carousel_pageview.dart';
import 'package:hero_profile/widgets/customize_card.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends BasePageState<MovieListPage> {
  ComicMovieRepos _repos = new ComicMovieRepos();
  List<ComicMovie> _comicMovies = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    final List<ComicMovie> data = await _repos.getAllMovie();
    setState(() {
      _comicMovies = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
        padding: EdgeInsets.only(
            top: scaleHeight(56 + 10.0), bottom: scaleHeight(68 + 10.0)),
        itemBuilder: (context, index) {
          final item = _comicMovies[index];
          return Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: StadiumBorder(),
                  color: theme.accentColor,
                  child: Container(
                    width: screenSize.width * 0.3,
                    margin: EdgeInsets.symmetric(
                        vertical: scaleHeight(5), horizontal: scaleWidth(5)),
                    alignment: Alignment.center,
                    child: Text(
                      '${item.comicTitle}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textScaleFactor: screenWidthRatio(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: theme.textTheme.body2.color),
                    ),
                  ),
                ),
              ),
              MoviePageView(
                movies: item.movies,
                theme: theme,
                screenSize: screenSize,
              ),
            ],
          );
        },
        itemCount: _comicMovies.length,
      ),
    );
  }
}

class MoviePageView extends StatefulWidget {
  final List<Movie> movies;
  final ThemeData theme;
  final Size screenSize;

  MoviePageView({this.movies, @required this.theme, @required this.screenSize});

  @override
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends BasePageState<MoviePageView> {
  PageController _pageController;

  List<Movie> get _movies => widget.movies;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.6);
  }

  @override
  Widget build(BuildContext context) {
    final itemHeight = (screenSize.height - 66 - 78) * 2.1 / 3;
    return Container(
      height: itemHeight,
      child: CarouselPageView(
        controller: _pageController,
        itemBuilder: (context, index) {
          final item = _movies[index];
          return Container(
            margin: EdgeInsets.only(
                top: scaleHeight(10),
                bottom: scaleHeight(30),
                left: scaleWidth(5),
                right: scaleWidth(5)),
            child: CustomizeCard(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MovieDetailPage(item);
                    },
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.expand,
                children: <Widget>[
                  Hero(
                    tag: item.thumbNail,
                    child: Image.network(
                      item.thumbNail,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: scaleWidth(5), horizontal: scaleHeight(5)),
                      height: itemHeight * 0.15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: theme.primaryColor,
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: scaleHeight(3)))),
                      child: Text(
                        '${item.title}',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        textScaleFactor: screenWidthRatio(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: theme.textTheme.body1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: _movies.length,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
