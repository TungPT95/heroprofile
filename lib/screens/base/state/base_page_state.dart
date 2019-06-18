import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_loading_indicator.dart';
import 'package:flutter/material.dart';

abstract class BasePageState<T extends StatefulWidget> extends State<T> {
  Widget showSliverProgressIndicator() {
    final progress = SliverToBoxAdapter(
        child: AvengerProgressLoadingIndicator(
      height: getProgressViewHeight(),
    ));
    return progress;
  }

  Widget showProgressIndicator() => AvengerProgressLoadingIndicator();

  double getProgressViewHeight() => double.infinity;

  Widget buildBlankSliverFragment() => SliverToBoxAdapter(
        child: Container(),
      );

  Widget buildBlankFragment() => Container();
}
