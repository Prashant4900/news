import 'package:flutter/material.dart';
import 'package:news/views/widgets/components/layer_view.dart';

class MyFeedPageWidget extends StatelessWidget {
  const MyFeedPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return LayerViewWidget(id: index);
      },
    );
  }
}
