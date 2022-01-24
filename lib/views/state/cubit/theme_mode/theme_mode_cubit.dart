import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news/views/state/cubit/theme/theme_cubit.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends HydratedCubit<ThemeMode> {
  ThemeModeCubit() : super(ThemeMode.system);

  final _brightnessCubit = ThemeCubit();

  void switchThemeMode() {
    if (kDebugMode) {
      print("start: ThemeMode: $state Brightness: ${_brightnessCubit.state}");
    }
    if (_brightnessCubit.state == Brightness.light) {
      emit(ThemeMode.dark);
      _brightnessCubit.switchTheme();
    } else {
      emit(ThemeMode.light);
      _brightnessCubit.switchTheme();
    }

    if (kDebugMode) {
      print("end: ThemeMode: $state Brightness: ${_brightnessCubit.state}");
    }
  }

  void currentThemeMode() {
    if (_brightnessCubit.state == Brightness.light) {
      emit(ThemeMode.light);
    } else {
      emit(ThemeMode.dark);
    }
  }

  @override
  ThemeMode fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['themeMode'] as int];
  }

  @override
  Map<String, dynamic> toJson(ThemeMode state) {
    return <String, int>{'themeMode': state.index};
  }
}
