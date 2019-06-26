import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/models/comic.dart';

abstract class ComicsListState extends BaseState {
  ComicsListState([List props]) : super(props);
}

class LoadedComicsState extends ComicsListState {
  final List<Comic> comics;

  LoadedComicsState([this.comics])
      : assert(comics != null && comics.isNotEmpty),
        super(comics);

  @override
  String toString() => 'Loaded Comics: ${comics.length}';
}

class LoadComicsFailedState extends ComicsListState {
  @override
  String toString() => 'LoadC omics Failed';
}
