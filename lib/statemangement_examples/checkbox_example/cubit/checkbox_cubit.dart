import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'checkbox_state.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(CheckboxInitial());

  bool selected = false;

  void changeSelected(bool value) {
    selected = value;
    emit(CheckboxInitial());
  }
}
