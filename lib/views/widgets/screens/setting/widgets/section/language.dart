import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/config/meta/constant.dart';
import 'package:news/views/state/cubit/language/language_cubit.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LanguageWidget> createState() => _LanguageWidget();
}

class _LanguageWidget extends State<LanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<LanguageCubit, bool>(
        builder: (context, english) {
          return SwitchListTile(
            secondary: const Icon(Icons.translate_outlined),
            title: Text(
              english ? Language.english : Language.hindi,
              style: Theme.of(context).textTheme.headline6,
            ),
            value: english,
            onChanged: (bool value) {
              context.read<LanguageCubit>().toggle();
            },
          );
        },
      ),
    );
  }
}
