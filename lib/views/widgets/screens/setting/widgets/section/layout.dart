import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/views/state/cubit/layout/layout_cubit.dart';

class LauoutWidget extends StatefulWidget {
  const LauoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LauoutWidget> createState() => _LauoutWidgetState();
}

class _LauoutWidgetState extends State<LauoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<LayoutCubit, bool>(
        builder: (context, card) {
          return SwitchListTile(
            secondary: Icon(
              card ? Icons.view_agenda_outlined : Icons.layers_outlined,
            ),
            title: Text(
              '${card ? "Card" : "Page"} Layout',
              style: Theme.of(context).textTheme.headline6,
            ),
            value: card,
            onChanged: (bool value) {
              context.read<LayoutCubit>().toggle();
            },
          );
        },
      ),
    );
  }
}
