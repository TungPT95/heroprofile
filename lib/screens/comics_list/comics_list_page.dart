import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/blocs/comics_list/comics_list_bloc.dart';
import 'package:hero_profile/blocs/comics_list/comics_list_state.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/comics/comics_repos.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

import 'comic_detail/comic_detail.dart';
import 'comic_list/comic_list.dart';

class ComicsListPage extends StatefulWidget {
  @override
  _ComicsListPageState createState() => _ComicsListPageState();
}

class _ComicsListPageState extends BasePageState<ComicsListPage> {
  List<Comic> _list = [];
  ComicsListBloc _comicsListBloc;
  Widget _replaceWidget;

  @override
  void initState() {
    _comicsListBloc = ComicsListBloc(ComicsRepos());
    super.initState();
    _comicsListBloc.dispatch(OnStart());
  }

  @override
  Widget build(BuildContext context) {
    final wantedPercent = 90 / 100;

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<BaseEvent, BaseState>(
            bloc: _comicsListBloc,
            builder: (context, state) {
              if (state is InitialState) {
                _replaceWidget = showProgressIndicator();
              } else if (state is LoadedComicsState) {
                _list = state.comics;
                _replaceWidget = Container(
                  padding: const EdgeInsets.only(
                    top: 56 + 10.0,
                    bottom: 70,
                  ),
                  child: ComicList(
                    items: _list,
                    itemClickCallback: (detail) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ComicDetail(detail)));
                    },
                  ),
                );
              }
              return _replaceWidget;
            }));
  }
}
