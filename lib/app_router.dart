import 'package:breakingbadproject/business_logic/bloc/characters_cubit.dart';
import 'package:breakingbadproject/constants/strings.dart';
import 'package:breakingbadproject/data/repository/character_repository.dart';
import 'package:breakingbadproject/presentation/screens/characterDetails.dart';
import 'package:breakingbadproject/presentation/screens/characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/services/character_web_services.dart';

class AppRouter {
  late CharactersCubit charactersCubit;
  late CharacterRepository characterRepository;

  AppBar() {
    characterRepository = new CharacterRepository(CharacterWebServices());
    charactersCubit = new CharactersCubit(characterRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(create: (BuildContext context) =>
                charactersCubit
              , child: CharactersScreen()
              ,)
        );
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}