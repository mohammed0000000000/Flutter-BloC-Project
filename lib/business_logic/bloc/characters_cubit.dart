import 'package:bloc/bloc.dart';
import 'package:breakingbadproject/data/repository/character_repository.dart';
import 'package:meta/meta.dart';

import '../../data/models/characterModel.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  // need to create CharacterRepository to get characters
  final CharacterRepository characterRepository;
  late List<Character> characters;

  CharactersCubit(this.characterRepository) : super(CharactersInitial());

  Future<List<Character>> getAllCharacters1() async {
    try{
      characters = await characterRepository.fetchAllCharacters();
      emit(CharactersLoaded(characters));
      return characters;
    }
    catch(e){
      print("Error when get all Characters ${e.toString()}");
      return [];
    }
  }

  List<Character> getAllCharacters2() {
    characterRepository.fetchAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    }
    );
    return characters;
  }
}
