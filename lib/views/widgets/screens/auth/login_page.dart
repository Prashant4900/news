import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'package:news/config/meta/constant.dart';
import 'package:news/data/source/remote/user_api_service.dart';
import 'package:news/injector.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.onLoginCallback}) : super(key: key);

  final Function(bool loggedIn) onLoginCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SignInScreen(
          showAuthActionSwitch: true,
          headerBuilder: (context, constraints, shrinkOffset) => SizedBox(
            height: double.infinity,
            child: Center(
              child: Image.asset(
                'assets/app/logo.png',
                fit: BoxFit.contain,
                height: constraints.maxHeight * .7,
              ),
            ),
          ),
          sideBuilder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.edit,
                      size: 100,
                      color: Colors.brown,
                    ),
                    Icon(
                      Icons.my_library_books,
                      size: 100,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            );
          },
          providerConfigs: const [
            GoogleProviderConfiguration(clientId: Config.clientID),
            AppleProviderConfiguration(),
            EmailProviderConfiguration(),
          ],
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              if (kDebugMode) {
                print(
                    "current user detail: ${locator<UserApiService>().getUser(state.user!.uid)}");
              }
              onLoginCallback.call(true);
            })
          ],
        ),
      ),
    );
  }
}
