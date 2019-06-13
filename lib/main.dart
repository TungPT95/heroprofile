import 'package:avenger_information/blocs/character_list/character_list_bloc.dart';
import 'package:avenger_information/blocs/delegate/app_bloc_delegate.dart';
import 'package:avenger_information/repository/characters/characters_repos.dart';
import 'package:avenger_information/screens/character_list/character_list_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(AvengerInformationApp());
}

class AvengerInformationApp extends StatelessWidget {
  static const String title = 'Avenger Character Profile';

//  final _home = TestPage();
//  final _home = SplashPage();

  final _home = HomePage(title: title);

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
        blocProviders: [
          BlocProvider<CharacterListBloc>(
            builder: (context) =>
                CharacterListBloc(repository: CharactersRepos()),
            dispose: (context, bloc) => bloc.dispose(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            accentColor: Color(0xFF58060A),
            primaryColor: Colors.red[900],
          ),
          home: _home,
        ));
  }
}
