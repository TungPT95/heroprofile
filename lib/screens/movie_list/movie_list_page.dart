import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/repository/comic_movie_repos/comic_movie_repos.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/widgets/carousel_pageview/carousel_pageview.dart';
import 'package:hero_profile/widgets/customize_card.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends BasePageState<MovieListPage> {
  ComicMovieRepos _repos = new ComicMovieRepos();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.only(top: 76, bottom: 80),
      child: ListView.builder(
        itemBuilder: (context, index) => MoviePageView(),
        itemCount: 2,
      ),
    );
  }
}

class MoviePageView extends StatefulWidget {
  @override
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> with AppTheme {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7);
  }

  @override
  Widget build(BuildContext context) {
    final itemHeight = (MediaQuery.of(context).size.height - 76 - 80) * 2.1 / 3;
    return Container(
      height: itemHeight,
      width: double.infinity,
      child: CarouselPageView(
        controller: _pageController,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(30),
            child: CustomizeCard(
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'http://thegioibluray.com/resources/200ceb26807d6bf99fd6f4f0d1ca54d4/BLURAY%202D-50G/F422.jpg',
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      height: itemHeight * 1 / 6,
                      color: Colors.white,
                      child: Text(
                        'Man of Steel (2013)',
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
