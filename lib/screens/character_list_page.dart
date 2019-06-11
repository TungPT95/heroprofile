import 'package:avenger_information/blocs/base/base_event.dart';
import 'package:avenger_information/blocs/base/base_state.dart';
import 'package:avenger_information/blocs/character_list/character_list_bloc.dart';
import 'package:avenger_information/blocs/character_list/character_list_state.dart';
import 'package:avenger_information/models/character.dart';
import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:avenger_information/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/character_info_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  final String appBarBg =
      'https://www.wallpaperup.com/uploads/wallpapers/2015/11/28/844462/3fd9cb463620756c8f3dacc926303d45.jpg';

  HomePage({this.title = ''}) : assert(title != null);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<Character> list = [];
  AnimationController controller;
  Animation<double> _animation;
  AvengerProgressIndicator _avengerProgressIndicator;
  final double _expandedHeight = 210;

  CharacterListBloc _characterListBloc;

  @override
  void initState() {
    _characterListBloc = BlocProvider.of<CharacterListBloc>(context);
    _characterListBloc.dispatch(OnStart());

    super.initState();

    controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    _animation = Tween<double>(begin: 0, end: 100).animate(controller);
    _avengerProgressIndicator = AvengerProgressIndicator(
      animation: _animation,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<BaseEvent, BaseState>(
      bloc: _characterListBloc,
      builder: (context, state) {
        Widget _replaceWidget;
        if (state is LoadingCharacterSate) {
          _replaceWidget = _showProgressIndicator(context);
        }

        if (state is LoadedCharacterState) {
          _stopProgressIndicator();
          _replaceWidget = _buildCharacterList(state.characters);
        }

        return CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              forceElevated: true,
              backgroundColor: Color(0xFF58060A),
              expandedHeight: _expandedHeight,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: Text(
                    '${widget.title}',
                  ),
                  centerTitle: true,
                  background: FadeInImage.assetNetwork(
                    placeholder:
                        'assets/images/ic_app_horizontal_placeholder.jpg',
                    image: '${widget.appBarBg}',
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(milliseconds: 1100),
                    fadeInCurve: Curves.linear,
                  )),
              brightness: Brightness.dark,
              automaticallyImplyLeading: true,
            ),
            _replaceWidget,
          ],
        );
      },
    ));
  }

  Widget _buildCharacterList(List<Character> list) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
        return CharacterItem(
          list[index],
          itemClickListener: (id) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CharacterInfoPage(
                      character: list[index],
                      repository: list[index].repository,
                    ),
              ),
            );
          },
        );
      }, childCount: list.length)),
    );
  }

  Widget _showProgressIndicator(BuildContext context) {
    final progress = SliverToBoxAdapter(
      child: _avengerProgressIndicator
        ..height = MediaQuery.of(context).size.height - _expandedHeight,
    );
    controller.forward();
    controller.repeat();
    return progress;
  }

  void _stopProgressIndicator() {
    controller.stop();
  }

  @override
  void dispose() {
    controller.dispose();
    _characterListBloc.dispose();
    super.dispose();
  }
}
