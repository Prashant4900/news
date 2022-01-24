import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:news/config/routes/router.gr.dart';
import 'package:news/views/widgets/screens/setting/widgets/category_card.dart';
import 'package:news/views/widgets/screens/setting/widgets/label.dart';
import 'package:news/views/widgets/screens/setting/widgets/section/language.dart';
import 'package:news/views/widgets/screens/setting/widgets/section/layout.dart';
import 'package:news/views/widgets/screens/setting/widgets/section/theme.dart';
import 'package:news/views/widgets/screens/setting/widgets/user_image.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return SingleChildScrollView(
      child: Column(
        children: [
          // User Section
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserImageWidget(user: user),
                const SizedBox(height: 10),
                Text(
                  user?.displayName ?? "Guest User",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 5),
                Text(
                  user?.email ?? "",
                  style: Theme.of(context).textTheme.button,
                )
              ],
            ),
          ),

          // Category Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Following",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
                InkWell(
                  child: Text(
                    "View All",
                    style: Theme.of(context).textTheme.button,
                  ),
                  onTap: () {
                    context.router.push(const CategoriesRoute());
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 3,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, itemCount) {
                String _label = itemCount % 2 == 0 ? "Anime" : "Games";
                String _image = itemCount % 2 == 0 ? "anime" : "game";
                return CategoryCardWidget(
                  lable: _label,
                  image: "assets/svg/$_image.svg",
                );
              },
            ),
          ),

          // Theme Section
          const LabelWidget(label: "Theme"),
          const ThemeWidget(),

          // Language Section
          const LabelWidget(label: "Language"),
          const LanguageWidget(),

          // Layout Section
          const LabelWidget(label: "Layout"),
          const LauoutWidget(),

          // About Section
          const LabelWidget(label: "About"),
          _aboutSection(context),

          // Logout Section
          const LabelWidget(label: "Logout"),
          Card(
            child: ListTile(
              dense: true,
              leading: const Icon(Icons.logout_outlined),
              title: Text(
                "Logout",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              subtitle: const Text("Bye, I come later"),
              onTap: () async {
                try {
                  await FirebaseAuth.instance.signOut().then(
                        (value) => context.router.pushAndPopUntil(
                            LoginRoute(onLoginCallback: (value) => false),
                            predicate: (value) => false),
                      );
                } catch (e) {
                  if (kDebugMode) {
                    print('Error occure on logout $e');
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Card _aboutSection(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            dense: true,
            leading: const Icon(Icons.star_border),
            title: Text(
              "Rate Us",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            subtitle: const Text("Tell us what you think"),
            onTap: () {
              // TODO: Rate Us button
            },
          ),
          ListTile(
            dense: true,
            leading: Image.asset(
              "assets/app/logo.png",
              width: 30,
            ),
            title: Text(
              "About Nerdyr News",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            subtitle: const Text("v3.5.1"),
            onTap: () {
              // TODO: about button
            },
          ),
        ],
      ),
    );
  }
}
