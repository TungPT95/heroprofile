import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
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
        padding: const EdgeInsets.only(top: 76, bottom: 80),
        itemBuilder: (context, index) {
          final item = _comicMovies[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    '${item.comicTitle}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              MoviePageView(
                movies: item.movies,
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

  MoviePageView({this.movies});

  @override
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> with AppTheme {
  PageController _pageController;

  List<Movie> get _movies => widget.movies;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.6);
  }

  @override
  Widget build(BuildContext context) {
    final itemHeight = (MediaQuery.of(context).size.height - 76 - 80) * 2.1 / 3;
    return Container(
      height: itemHeight,
      child: CarouselPageView(
        controller: _pageController,
        itemBuilder: (context, index) {
          final item = _movies[index];
          return Container(
            margin: EdgeInsets.only(top: 10, bottom: 30, left: 5, right: 5),
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
                    tag: item.imagePath,
                    child: Image.network(
                      item.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: itemHeight * 0.15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 3))),
                      child: Text(
                        '${item.title}',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
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
