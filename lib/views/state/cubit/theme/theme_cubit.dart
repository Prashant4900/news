import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<Brightness> {
  ThemeCubit() : super(Brightness.light);

  void switchTheme() {
    emit(state == Brightness.light ? Brightness.dark : Brightness.light);
  }

  @override
  Brightness? fromJson(Map<String, dynamic> json) {
    return Brightness.values[json['brightness'] as int];
  }

  @override
  Map<String, dynamic>? toJson(Brightness state) {
    return <String, int>{'brightness': state.index};
  }
}
