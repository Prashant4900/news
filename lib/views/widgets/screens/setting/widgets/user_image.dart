import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news/config/meta/constant.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(56),
      child: CachedNetworkImage(
        imageUrl: user?.photoURL ?? Config.userIcon,
        placeholder: (context, url) {
          return Image.asset(
            "assets/image/user.png",
            width: 70,
          );
        },
        errorWidget: (context, url, error) => const Icon(Icons.error),
        width: 70,
      ),
    );
  }
}
