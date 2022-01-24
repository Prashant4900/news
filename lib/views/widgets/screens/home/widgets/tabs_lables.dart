import 'package:flutter/material.dart';

class TabLableWidget extends StatelessWidget {
  const TabLableWidget({
    Key? key,
    required this.lable,
  }) : super(key: key);
  final String lable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Center(
        child: Text(
          lable,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
