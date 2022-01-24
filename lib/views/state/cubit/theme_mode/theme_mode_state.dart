part of 'theme_mode_cubit.dart';

@immutable
abstract class ThemeModeState {}

class ThemeModeInitial extends ThemeModeState {}

class ThemeModeLight extends ThemeModeState {}

class ThemeModeDark extends ThemeModeState {}

class ThemeModeSystem extends ThemeModeState {}

class ThemeModeError extends ThemeModeState {
  final String message;
  ThemeModeError({required this.message});
}
