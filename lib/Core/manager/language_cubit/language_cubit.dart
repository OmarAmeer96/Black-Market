import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  var local = Locale(Platform.localeName.substring(0, 2));
  var currentLanguage = Platform.localeName.substring(0, 2);

  void changeLanguage() {
    if (local == const Locale("en")) {
      local = const Locale("ar");
      currentLanguage = "ar";
    } else if (local == const Locale("ar")) {
      local = const Locale("en");
      currentLanguage = "en";
    }
    emit(LanguageChangeState());
    print(currentLanguage);
  }
}
