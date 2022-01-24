import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news/config/meta/app_theme.dart';
import 'package:news/config/routes/route_guard.dart';
import 'package:news/config/routes/router.gr.dart';
import 'package:news/views/state/cubit/language/language_cubit.dart';
import 'package:news/views/state/cubit/layout/layout_cubit.dart';
import 'package:news/views/state/cubit/theme/theme_cubit.dart';
import 'package:news/views/state/cubit/theme_mode/theme_mode_cubit.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ThemeModeCubit>(create: (_) => ThemeModeCubit()),
        BlocProvider<LayoutCubit>(create: (_) => LayoutCubit()),
        BlocProvider<LanguageCubit>(create: (_) => LanguageCubit()),
      ],
      child: const MyApp(),
    );
  }
}

final _appRouter = AppRouter(authGuard: AuthGuard());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeMode>(
      builder: (context, thememode) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: kDebugMode,
          theme: AppTheme.lightTheme(context),
          darkTheme: AppTheme.darkTheme(context),
          themeMode: thememode,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
        );
      },
    );
  }
}
