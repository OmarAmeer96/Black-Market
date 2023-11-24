import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  var local = Locale(Platform.localeName.substring(0, 2));

  void changeLanguage() {
    print(Platform.localeName);
    if (local == const Locale("en")) {
      local = const Locale("ar");
    } else {
      local = const Locale("en");
    }
    emit(LanguageChangeState());
    print(Platform.localeName);
  }
}
