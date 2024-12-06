
import 'package:breakingbadproject/data/services/character_web_services.dart';

import '../models/characterModel.dart';

class CharacterRepository{
  final CharacterWebServices characterWebServices;
  CharacterRepository(this.characterWebServices);

  // this function call getAllCharacters in webservices a
  // then map response from json to my custom model
  Future<List<dynamic>> fetchAllCharacters() async{
    final characters = await characterWebServices.getAllCharacter();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}