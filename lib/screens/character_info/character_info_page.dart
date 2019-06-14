import 'package:avenger_information/blocs/base/base_event.dart';
import 'package:avenger_information/blocs/base/base_state.dart';
import 'package:avenger_information/blocs/character_info/character_info_bloc.dart';
import 'package:avenger_information/blocs/character_info/character_info_event.dart';
import 'package:avenger_information/blocs/character_info/character_info_state.dart';
import 'package:avenger_information/models/character.dart';
import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';
import 'package:avenger_information/widgets/animation_widgets/slide_animation_widgets/ltr_slide_animation_widgets/ltr_slide_animation_list/ltr_slide_animation_list.dart';
import 'package:avenger_information/widgets/animation_widgets/slide_animation_widgets/ltr_slide_animation_widgets/ltr_slide_animation_view/ltr_slide_animation_view.dart';
import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:avenger_information/widgets/avenger_sliver_appbar/avenger_sliver_appbar.dart';
import 'package:avenger_information/widgets/board_view.dart';
import 'package:avenger_information/widgets/drawer/avenger_drawer.dart';
import 'package:avenger_information/widgets/drawer/avenger_drawer_header.dart';
import 'package:avenger_information/widgets/drawer/avenger_drawer_item.dart';
import 'package:avenger_information/widgets/feats_info_item.dart';
import 'package:avenger_information/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterInfoPage extends StatefulWidget {
  final Character character;
  final double circleBorderWidth;
  final double avatarSize;
  final CharacterRepos repository;

  CharacterInfoPage(
      {@required this.character,
      this.circleBorderWidth = 2,
      this.avatarSize = 80,
      this.repository})
      : assert(character != null);

  @override
  _CharacterInfoPageState createState() => _CharacterInfoPageState();
}

class _CharacterInfoPageState extends State<CharacterInfoPage>
    with SingleTickerProviderStateMixin {
  CharacterRepos get _repository => widget.repository;
  AnimationController controller;
  Animation<double> _animation;
  AvengerProgressIndicator _avengerProgressIndicator;
  String _appBarTitle = '';
  int _currentDrawerItemIndex = CategoryType.Background.index;

  final double _expandedHeight = 210;
  List<Widget> _drawerItems = [];

  String get _appBarBg => widget.character.appBarBg;
  CharacterInfoBloc _characterInfoBloc;

  @override
  void initState() {
    _characterInfoBloc = CharacterInfoBloc()..characterRepository = _repository;
    _characterInfoBloc.dispatch(OnStart());
    super.initState();

    controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    _animation = Tween<double>(begin: 0, end: 100).animate(controller);
    _avengerProgressIndicator = AvengerProgressIndicator(
      animation: _animation,
    );

    _characterInfoBloc.dispatch(LoadCharacterDetailCategory());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseEvent, BaseState>(
      bloc: _characterInfoBloc,
      builder: (context, state) {
        Widget _replaceWidget;
        if (state is OnDrawerClickState) {
          _appBarTitle = state.title;
          _currentDrawerItemIndex = state.category.index;
          _replaceWidget = _showProgressIndicator(context);
        }

        if (state is LoadedCharacterDetailCategoryState) {
          _replaceWidget = _showProgressIndicator(context);
          _drawerItems = _buildDrawerItems(state.categories);
        }

        if (state is LoadedInformationState) {
          _replaceWidget = _buildInformationFragment(state.information);
          _stopProgressIndicator();
        }

        if (state is LoadedFeatsState) {
          _replaceWidget = _buildFeatsFragment(state.feats);
          _stopProgressIndicator();
        }

        if (state is LoadedBackgroundState) {
          _replaceWidget = _buildBackgroundFragment(state.background);
          _stopProgressIndicator();
        }

        return Scaffold(
          endDrawer: AvengerDrawer(
            '${widget.character.drawerBg}',
            currentDrawerItemIndex: _currentDrawerItemIndex,
            drawerItems: _drawerItems,
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              AvengerSliverAppbar(
                title: _appBarTitle,
                appBarBg: _appBarBg,
              ),
              _replaceWidget,
            ],
          ),
        );
      },
    );
  }

  Widget _buildBackgroundFragment(String background) {
    return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
      LTRSlideAnimationView(Container(
          padding: EdgeInsets.all(10),
          child: BoardView(content: '$background}'))),
    ]));
  }

  Widget _buildFeatsFragment(var list) => SliverPadding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        sliver: LTRSlideAnimationList(list.map<FeatsInfoItem>((item) {
          return FeatsInfoItem(item);
        }).toList()),
      );

  Widget _buildInformationFragment(List<Information> list) => SliverPadding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        sliver: LTRSlideAnimationList(list.map<InfoItem>((item) {
          return InfoItem(item);
        }).toList()),
      );

  List<Widget> _buildDrawerItems(List<CharacterDetailCategory> categories) {
    var list = <Widget>[
      AvengerDrawerHeader(
        avatar: '${widget.character.avatar}',
        title: '${widget.character.name}',
      ),
    ];
    _characterInfoBloc.dispatch(DrawerClickEvent(categories[0].categoryType,
        title: categories[0].title));
    list.addAll(categories
        .map((item) => AvengerDrawerItem('${item.title}',
                index: item.id + 1, categoryType: item.categoryType,
                drawerItemClickListener: (category) {
              _characterInfoBloc
                  .dispatch(DrawerClickEvent(category, title: item.title));
            }))
        .toList());
    return list;
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
    _characterInfoBloc.dispose();
    controller.dispose();
    super.dispose();
  }
}
