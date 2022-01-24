import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/views/state/cubit/theme/theme_cubit.dart';
import 'package:news/views/state/cubit/theme_mode/theme_mode_cubit.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<ThemeCubit, Brightness>(
        builder: (context, state) {
          return BlocBuilder<ThemeModeCubit, ThemeMode>(
            builder: (context, thememode) {
              return SwitchListTile(
                secondary: Icon(
                  state == Brightness.dark
                      ? Icons.nightlight_rounded
                      : Icons.light_mode,
                ),
                title: Text(
                  'Theme',
                  style: Theme.of(context).textTheme.headline6,
                ),
                value: state == Brightness.dark,
                onChanged: (bool value) {
                  context.read<ThemeCubit>().switchTheme();
                  context.read<ThemeModeCubit>().switchThemeMode();
                },
              );
            },
          );
        },
      ),
    );
  }
}
