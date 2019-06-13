import 'package:avenger_information/blocs/base/base_event.dart';
import 'package:avenger_information/blocs/base/base_state.dart';
import 'package:avenger_information/blocs/character_list/character_list_bloc.dart';
import 'package:avenger_information/blocs/character_list/character_list_state.dart';
import 'package:avenger_information/models/character.dart';
import 'package:avenger_information/widgets/animation_widgets/ltr_slide_animation_widgets/ltr_slide_animation_list/ltr_slide_animation_list.dart';
import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:avenger_information/widgets/avenger_sliver_appbar/avenger_sliver_appbar.dart';
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
  double _expandedHeight = 210;

  CharacterListBloc _characterListBloc;

  String get _appBarTitle => widget.title;

  String get _appBarBg => widget.appBarBg;

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
            AvengerSliverAppbar(
              title: _appBarTitle,
              appBarBg: _appBarBg,
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
      sliver: LTRSlideAnimationList(
          list.map<CharacterItem>((item) =>
              CharacterItem(
                item,
          itemClickListener: (id) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CharacterInfoPage(
                  character: item,
                  repository: item.repository,
                ),
              ),
            );
          },
              )).toList()
      ),
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
