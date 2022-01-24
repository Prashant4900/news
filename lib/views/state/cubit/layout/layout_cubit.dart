import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'layout_state.dart';

class LayoutCubit extends HydratedCubit<bool> {
  LayoutCubit() : super(true);

  void toggle() => emit(!state);

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['card'] as bool?;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {'card': state};
  }
}
