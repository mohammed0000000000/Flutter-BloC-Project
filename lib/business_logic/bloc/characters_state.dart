part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

// to create new state, must extends from CharacterState
final class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState{
  late final List<Character> characters;
  CharactersLoaded(this.characters);
}
