import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/config/meta/icon.dart';

class CategoryCardWidget extends StatefulWidget {
  const CategoryCardWidget({
    Key? key,
    required String lable,
    required String image,
  })  : _lable = lable,
        _image = image,
        super(key: key);

  final String _lable;
  final String _image;

  @override
  State<CategoryCardWidget> createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 3.5,
          child: Badge(
            badgeContent: _check ? const Icon(MyIcons.verified) : null,
            badgeColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  widget._image,
                  width: 65,
                ),
                Text(
                  widget._lable,
                  style: Theme.of(context).textTheme.button,
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        // TODO: implement follow or unfollow
        setState(() => _check = !_check);
      },
    );
  }
}
