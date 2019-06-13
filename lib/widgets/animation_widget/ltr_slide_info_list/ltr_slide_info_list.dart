import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_bloc.dart';
import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_event.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/widgets/animation_widget/ltr_slide_info_list/ltr_slide_info_item.dart';
import 'package:avenger_information/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LTRSlideInfoList extends StatefulWidget {
  final List<Information> items;

  LTRSlideInfoList(this.items) : assert(items != null);

  @override
  _LTRSlideInfoListState createState() => _LTRSlideInfoListState();
}

class _LTRSlideInfoListState extends State<LTRSlideInfoList> {
  LTRSlideAnimationBloc _ltrSlideAnimationBloc;

  List<Information> get _list => widget.items;

  final Duration _duration = const Duration(milliseconds: 500);

  @override
  void initState() {
    _ltrSlideAnimationBloc =
        LTRSlideAnimationBloc(delay: _duration, length: _list.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _ltrSlideAnimationBloc.dispatch(StartSlideAnimation(0));
    return BlocProvider<LTRSlideAnimationBloc>(
      builder: (context) => _ltrSlideAnimationBloc,
      dispose: (context, bloc) => bloc.dispose(),
      child: SliverPadding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return LTRSlideInfoItem(
              InfoItem(_list[index]),
              index: index,
              duration: _duration,
            );
          },
          childCount: _list.length,
        )),
      ),
    );
  }

  @override
  void dispose() {
    _ltrSlideAnimationBloc.dispose();
    super.dispose();
  }
}
