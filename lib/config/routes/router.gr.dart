// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i10;

import '../../views/widgets/screens/auth/login_page.dart' as _i4;
import '../../views/widgets/screens/bookmark/bookmark_page.dart' as _i8;
import '../../views/widgets/screens/category/categories_page.dart' as _i3;
import '../../views/widgets/screens/dashboard.dart' as _i1;
import '../../views/widgets/screens/detail/news_detail_page.dart' as _i2;
import '../../views/widgets/screens/feed/feed_page.dart' as _i7;
import '../../views/widgets/screens/home/home_page.dart' as _i6;
import '../../views/widgets/screens/setting/setting_page.dart' as _i9;
import 'route_guard.dart' as _i11;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyDashboard.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyDashboard());
    },
    NewsDetailRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NewsDetailPage());
    },
    CategoriesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CategoriesPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.LoginPage(
              key: args.key, onLoginCallback: args.onLoginCallback));
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    FeedRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    BookmarkRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    UserRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    FeedRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.FeedPage());
    },
    BookmarksRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.BookmarksPage());
    },
    SettingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SettingPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MyDashboard.name, path: '/', guards: [
          authGuard
        ], children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MyDashboard.name,
              children: [
                _i5.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name)
              ]),
          _i5.RouteConfig(FeedRouter.name,
              path: 'feed',
              parent: MyDashboard.name,
              children: [
                _i5.RouteConfig(FeedRoute.name,
                    path: '', parent: FeedRouter.name)
              ]),
          _i5.RouteConfig(BookmarkRouter.name,
              path: 'bookmark',
              parent: MyDashboard.name,
              children: [
                _i5.RouteConfig(BookmarksRoute.name,
                    path: '', parent: BookmarkRouter.name)
              ]),
          _i5.RouteConfig(UserRouter.name,
              path: 'user',
              parent: MyDashboard.name,
              children: [
                _i5.RouteConfig(SettingRoute.name,
                    path: '', parent: UserRouter.name)
              ])
        ]),
        _i5.RouteConfig(NewsDetailRoute.name,
            path: '/detail', guards: [authGuard]),
        _i5.RouteConfig(CategoriesRoute.name,
            path: '/category', guards: [authGuard]),
        _i5.RouteConfig(LoginRoute.name, path: '/login'),
        _i5.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.MyDashboard]
class MyDashboard extends _i5.PageRouteInfo<void> {
  const MyDashboard({List<_i5.PageRouteInfo>? children})
      : super(MyDashboard.name, path: '/', initialChildren: children);

  static const String name = 'MyDashboard';
}

/// generated route for
/// [_i2.NewsDetailPage]
class NewsDetailRoute extends _i5.PageRouteInfo<void> {
  const NewsDetailRoute() : super(NewsDetailRoute.name, path: '/detail');

  static const String name = 'NewsDetailRoute';
}

/// generated route for
/// [_i3.CategoriesPage]
class CategoriesRoute extends _i5.PageRouteInfo<void> {
  const CategoriesRoute() : super(CategoriesRoute.name, path: '/category');

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i10.Key? key, required dynamic Function(bool) onLoginCallback})
      : super(LoginRoute.name,
            path: '/login',
            args: LoginRouteArgs(key: key, onLoginCallback: onLoginCallback));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLoginCallback});

  final _i10.Key? key;

  final dynamic Function(bool) onLoginCallback;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class FeedRouter extends _i5.PageRouteInfo<void> {
  const FeedRouter({List<_i5.PageRouteInfo>? children})
      : super(FeedRouter.name, path: 'feed', initialChildren: children);

  static const String name = 'FeedRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class BookmarkRouter extends _i5.PageRouteInfo<void> {
  const BookmarkRouter({List<_i5.PageRouteInfo>? children})
      : super(BookmarkRouter.name, path: 'bookmark', initialChildren: children);

  static const String name = 'BookmarkRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class UserRouter extends _i5.PageRouteInfo<void> {
  const UserRouter({List<_i5.PageRouteInfo>? children})
      : super(UserRouter.name, path: 'user', initialChildren: children);

  static const String name = 'UserRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.FeedPage]
class FeedRoute extends _i5.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: '');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i8.BookmarksPage]
class BookmarksRoute extends _i5.PageRouteInfo<void> {
  const BookmarksRoute() : super(BookmarksRoute.name, path: '');

  static const String name = 'BookmarksRoute';
}

/// generated route for
/// [_i9.SettingPage]
class SettingRoute extends _i5.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '');

  static const String name = 'SettingRoute';
}
