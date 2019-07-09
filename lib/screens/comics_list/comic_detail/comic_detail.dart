import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/widgets/board_view.dart';
import 'package:hero_profile/widgets/customize_sliver_appbar/customize_sliver_appbar.dart';

class ComicDetail extends StatefulWidget {
  final Comic comic;

  ComicDetail(this.comic) : assert(comic != null);

  @override
  _ComicDetailState createState() => _ComicDetailState();
}

class _ComicDetailState extends BasePageState<ComicDetail> {
  Comic get _comic => widget.comic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CustomizeSliverAppbar(
            title: _comic.title,
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: BoardView(
                content: _comic.fullDesc,
              ),
            ),
          )
        ],
      ),
    );
  }
}
