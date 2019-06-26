import 'package:hero_profile/blocs/base/base_bloc.dart';
import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/repository/comics/comics_repos.dart';

import 'comics_list_state.dart';

class ComicsListBloc extends BaseBloc {
  final ComicsRepos comicsRepos;

  ComicsListBloc(this.comicsRepos) : assert(comicsRepos != null);

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is OnStart) {
      final result = await comicsRepos.getComics();
      if (result != null && result.isNotEmpty)
        yield LoadedComicsState(result);
      else
        yield LoadComicsFailedState();
    }
  }
}
