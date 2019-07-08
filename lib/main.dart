import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_profile/blocs/character_list/character_list_bloc.dart';
import 'package:hero_profile/blocs/delegate/app_bloc_delegate.dart';
import 'package:hero_profile/repository/characters/characters_repos.dart';

import 'screens/home/home_page.dart';
import 'screens/splash/splash_page.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(AvengerInformationApp());
}

class AvengerInformationApp extends StatelessWidget {
  static const String title = 'Hero Profile';

//  final _home = HomePage(title: title);
//  final _home = HomePage();

//  final _home = ComicsList();

  final _home = SplashPage(
    splashLoadingCallback: (context) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    },
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
    ));
    return MultiBlocProvider(
        providers: [
          BlocProvider<CharacterListBloc>(
            builder: (context) =>
                CharacterListBloc(repository: CharactersRepos()),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: title,
            theme: ThemeData.light().copyWith(
              brightness: Brightness.light,
              primaryColor: Colors.white,
            ),
            home: _home));
  }
}
