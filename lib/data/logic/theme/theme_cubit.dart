import 'package:airosmobile/data/service/app_preferences.dart';
import 'package:airosmobile/data/service/xcore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode>{

  ThemeCubit (super.initialState);

  final sharedPreferences = getIt<AppPreferences>();

  changeTheme (bool value){
    if(sharedPreferences.isDarkMode()){
      emit(ThemeMode.light);
      sharedPreferences.saveThemeMode(false);
    }else{
      emit(ThemeMode.dark);
      sharedPreferences.saveThemeMode(true);
    }
  }

}