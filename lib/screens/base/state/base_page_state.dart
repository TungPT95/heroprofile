import 'package:flutter/material.dart';
import 'package:hero_profile/widgets/avenger_progress_indicator/avenger_progress_loading_indicator.dart';

import 'themed_base_state.dart';

abstract class BasePageState<T extends StatefulWidget>
    extends ThemedBaseState<T> {
  Widget showSliverProgressIndicator() {
    final progress = SliverToBoxAdapter(
        child: Container(
      child: AvengerProgressLoadingIndicator(
        height: getProgressViewHeight(),
        width: getProgressViewWidth(),
      ),
    ));
    return progress;
  }

  Widget showProgressIndicator() => AvengerProgressLoadingIndicator();

  double getProgressViewHeight() => double.infinity;

  double getProgressViewWidth() => double.infinity;

  Widget buildBlankSliverFragment() => SliverToBoxAdapter(
        child: Container(),
      );

  Widget buildBlankFragment() => Container();
}
