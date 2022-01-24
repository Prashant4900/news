import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/views/state/cubit/layout/layout_cubit.dart';
import 'package:news/views/widgets/components/card_view.dart';
import 'package:news/views/widgets/components/layer_view.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, bool>(
      builder: (context, card) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Bookmarks'),
            actions: [
              IconButton(
                icon: Icon(
                    card ? Icons.view_agenda_outlined : Icons.layers_outlined),
                onPressed: () {
                  context.read<LayoutCubit>().toggle();
                },
              ),
            ],
          ),
          body: LayoutBuilder(builder: (context, constraints) {
            if (card) {
              return _buildCardLayout(context, constraints);
            } else {
              return _buildListLayout(context, constraints);
            }
          }),
        );
      },
    );
  }

  Widget _buildCardLayout(BuildContext context, BoxConstraints constraints) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CardViewWidget(id: index);
      },
    );
  }

  Widget _buildListLayout(BuildContext context, BoxConstraints constraints) {
    return PageView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return LayerViewWidget(id: index);
      },
    );
  }
}
