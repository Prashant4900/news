import 'package:flutter/material.dart';
import 'package:news/views/widgets/screens/setting/widgets/category_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (BuildContext context, int itemCount) {
            String _label = itemCount % 2 == 0 ? "Anime" : "Games";
            String _image = itemCount % 2 == 0 ? "anime" : "game";
            return CategoryCardWidget(
              lable: _label,
              image: "assets/svg/$_image.svg",
            );
          },
        ),
      ),
    );
  }
}
