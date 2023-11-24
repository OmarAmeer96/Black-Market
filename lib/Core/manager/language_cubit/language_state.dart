part of 'language_cubit.dart';

sealed class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {}

class LanguageChangeState extends LanguageState {}
