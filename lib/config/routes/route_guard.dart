import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:news/config/routes/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    User? user = await FirebaseAuth.instance.authStateChanges().first;

    if (user == null) {
      router.push(
        LoginRoute(
          onLoginCallback: (_) {
            // we can't pop the bottom page in the navigator's stack
            // so we just remove it from our local stack
            resolver.next();
            router.removeLast();
          },
        ),
      );
    } else {
      resolver.next(true);
    }
  }
}
