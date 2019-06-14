import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_loading_indicator.dart';
import 'package:flutter/material.dart';

abstract class BasePageState<T extends StatefulWidget> extends State<T> {
  Widget showProgressIndicator() {
    final progress = SliverToBoxAdapter(
        child: AvengerProgressLoadingIndicator(
      height: getProgressViewHeight(),
    ));
    return progress;
  }

  double getProgressViewHeight() => double.infinity;
}
