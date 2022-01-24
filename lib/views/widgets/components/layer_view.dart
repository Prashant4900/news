import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news/config/meta/constant.dart';
import 'package:news/config/routes/router.gr.dart';
import 'package:news/views/state/cubit/language/language_cubit.dart';
import 'package:news/views/utils/datetime.dart';

class LayerViewWidget extends StatefulWidget {
  const LayerViewWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  State<LayerViewWidget> createState() => _LayerViewWidgetState();
}

class _LayerViewWidgetState extends State<LayerViewWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, bool>(
      builder: (context, english) {
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: Articles.thumbnail,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                english ? Articles.titleEng : Articles.titleHindi,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      // color: const Color(0xFF74C7B8),
                    ),
                textAlign: TextAlign.justify,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                Articles.category,
                style: Theme.of(context).textTheme.button,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: InkWell(
                onTap: () {
                  context.router.push(const NewsDetailRoute());
                },
                child: RichText(
                  text: TextSpan(
                    text: formateDateTime(Articles.updateAt) + " : ",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    children: <TextSpan>[
                      TextSpan(
                        text: english ? Articles.descEng : Articles.descHindi,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
