import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:news/config/meta/constant.dart';
import 'package:news/views/state/cubit/language/language_cubit.dart';
import 'package:news/views/utils/datetime.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<LanguageCubit, bool>(
        builder: (context, english) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('News Detail'),
            ),
            body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(imageUrl: Articles.thumbnail),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      english ? Articles.titleEng : Articles.titleHindi,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: RichText(
                      text: TextSpan(
                        text: formateDateTime(Articles.updateAt) + " : ",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                english ? Articles.descEng : Articles.descHindi,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        Articles.category,
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 60,
              child: InkWell(
                onTap: () async {
                  var _url = Articles.source;
                  if (!await launch(_url)) throw 'Could not launch $_url';
                },
                child: Card(
                  child: Center(
                    child: Text(
                      english ? Articles.titleEng : Articles.titleHindi,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
