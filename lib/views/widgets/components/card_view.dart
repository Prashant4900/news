import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:news/config/meta/constant.dart';
import 'package:news/config/routes/router.gr.dart';
import 'package:news/views/state/cubit/language/language_cubit.dart';
import 'package:news/views/utils/datetime.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, bool>(
      builder: (context, english) {
        return Card(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: CachedNetworkImage(imageUrl: Articles.thumbnail),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formateDateTime(Articles.updateAt),
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(
                      Articles.category,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.router.push(const NewsDetailRoute());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    english ? Articles.titleEng : Articles.titleHindi,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.bold,
                          // color: const Color(0xFFA3DDCB),
                        ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
