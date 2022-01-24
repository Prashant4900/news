import 'package:auto_route/auto_route.dart';

import 'package:news/config/routes/route_guard.dart';
import 'package:news/views/widgets/screens/auth/login_page.dart';
import 'package:news/views/widgets/screens/bookmark/bookmark_page.dart';
import 'package:news/views/widgets/screens/category/categories_page.dart';
import 'package:news/views/widgets/screens/dashboard.dart';
import 'package:news/views/widgets/screens/detail/news_detail_page.dart';
import 'package:news/views/widgets/screens/feed/feed_page.dart';
import 'package:news/views/widgets/screens/home/home_page.dart';
import 'package:news/views/widgets/screens/setting/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MyDashboard,
      guards: [AuthGuard],
      children: <AutoRoute>[
        AutoRoute(
          name: "homeRouter",
          path: 'home',
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(path: '', page: HomePage),
          ],
        ),
        AutoRoute(
          name: "feedRouter",
          path: 'feed',
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(path: '', page: FeedPage),
          ],
        ),
        AutoRoute(
          name: "bookmarkRouter",
          path: 'bookmark',
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(path: '', page: BookmarksPage),
          ],
        ),
        AutoRoute(
          name: "userRouter",
          path: 'user',
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(path: '', page: SettingPage),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: '/detail',
      page: NewsDetailPage,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '/category',
      page: CategoriesPage,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}

// build command: flutter packages pub run build_runner build --delete-conflicting-outputs
