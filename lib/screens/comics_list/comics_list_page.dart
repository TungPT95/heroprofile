import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/blocs/comics_list/comics_list_bloc.dart';
import 'package:hero_profile/blocs/comics_list/comics_list_state.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/comics/comics_repos.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/widgets/comic_item.dart';

class ComicsListPage extends StatefulWidget {
  @override
  _ComicsListPageState createState() => _ComicsListPageState();
}

class _ComicsListPageState extends BasePageState<ComicsListPage> {
  List<Comic> _list = [];
  PageController _pageController;
  double _currentPage = 0;
  ComicsListBloc _comicsListBloc;
  Widget _replaceWidget;

  @override
  void initState() {
    _comicsListBloc = ComicsListBloc(ComicsRepos());
    super.initState();

    _pageController = PageController()
      ..addListener(() {
//        debugPrint(_pageController.page.toString());
//        debugPrint('floor: ${_pageController.page.floor()}');
        setState(() {
          _currentPage = _pageController.page;
        });
      });

    _comicsListBloc.dispatch(OnStart());
  }

  @override
  Widget build(BuildContext context) {
    final halfOfScreenWidth = MediaQuery.of(context).size.width;
    final wantedPercent = 100 / 100;

    return Scaffold(
        body: BlocBuilder<BaseEvent, BaseState>(
            bloc: _comicsListBloc,
            builder: (context, state) {
              if (state is InitialState) {
                _replaceWidget = showProgressIndicator();
              } else if (state is LoadedComicsState) {
                _list = state.comics;
                _replaceWidget = PageView.builder(
                  itemBuilder: (context, index) {
//          debugPrint('animate index: $index');
//          debugPrint('animate index _currentPage: $_currentPage');
//          debugPrint('animate _currentPage.floor: ${_currentPage.floor()}');
//          debugPrint('animate index percent: ${index - _currentPage}');
//          debugPrint('animate -percent: ${_currentPage - index.abs()}');
                    final percent = (index - _currentPage).abs();
                    if (index == _currentPage.floor()) {
                      final scale = 1 - percent;
                      final trans = percent * halfOfScreenWidth;
                      return Opacity(
                        opacity: 1 - percent,
                        child: Transform.translate(
                          offset: Offset(trans, 0),
                          child: Transform.scale(
                            scale: scale < 1 && scale > wantedPercent
                                ? scale
                                : wantedPercent,
                            child: ComicItem(_list[index]),
                          ),
                        ),
                      );
                    } else {
                      return ComicItem(_list[index]);
                    }
                  },
                  controller: _pageController,
                  itemCount: _list.length,
                );
              }
              return _replaceWidget;
            }));
  }
}
