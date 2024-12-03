import 'package:breakingbadproject/constants/strings.dart';
import 'package:breakingbadproject/presentation/screens/characterDetails.dart';
import 'package:breakingbadproject/presentation/screens/characters.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch (settings.name){
      case characterScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}