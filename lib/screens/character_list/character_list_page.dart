import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/blocs/character_list/character_list_bloc.dart';
import 'package:hero_profile/blocs/character_list/character_list_state.dart';
import 'package:hero_profile/models/character.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/screens/character_info/character_info_page.dart';
import 'package:hero_profile/widgets/avenger_sliver_appbar/avenger_sliver_appbar.dart';
import 'package:hero_profile/widgets/character_item.dart';
import 'package:hero_profile/widgets/slide_animation_widgets/ltr_slide_animation_widgets/ltr_slide_animation_list/ltr_slide_animation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersPage extends StatefulWidget {
  final String title;
  final String appBarBg =
      'https://www.wallpaperup.com/uploads/wallpapers/2015/11/28/844462/3fd9cb463620756c8f3dacc926303d45.jpg';

  CharactersPage({this.title = ''}) : assert(title != null);

  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends BasePageState<CharactersPage> {
  List<Character> list = [];
  double _expandedHeight = 210;

  CharacterListBloc _characterListBloc;

  String get _appBarTitle => widget.title;

  String get _appBarBg => widget.appBarBg;

  @override
  void initState() {
    _characterListBloc = BlocProvider.of<CharacterListBloc>(context);
    _characterListBloc.dispatch(OnStart());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<BaseEvent, BaseState>(
      bloc: _characterListBloc,
      builder: (context, state) {
        Widget _replaceWidget;
        if (state is InitialState) {
          _replaceWidget = buildBlankSliverFragment();
        }
        if (state is LoadingCharacterSate) {
          _replaceWidget = showSliverProgressIndicator();
        }

        if (state is LoadedCharacterState) {
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
      sliver: LTRSlideAnimationList(list
          .map<CharacterItem>((item) => CharacterItem(
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
              ))
          .toList()),
    );
  }

  @override
  double getProgressViewHeight() =>
      MediaQuery.of(context).size.height - _expandedHeight;

  @override
  void dispose() {
    _characterListBloc.dispose();
    super.dispose();
  }
}
