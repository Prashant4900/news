import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'language_state.dart';

class LanguageCubit extends HydratedCubit<bool> {
  LanguageCubit() : super(true);

  void toggle() => emit(!state);

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['english'] as bool?;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {'english': state};
  }
}
