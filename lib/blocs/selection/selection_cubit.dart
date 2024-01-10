import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'selection_state.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(SelectionState.initial());
  void setSelectionChoice(String selectionChoiceCode) {
    debugPrint('in SelectionState selectionChoiceCode = $selectionChoiceCode');
    switch (selectionChoiceCode) {
      case 'issue_114':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_114));
      case 'issue_118':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_118));
      case 'issue_126':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_126));
      case 'issue_132':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_132));
      case 'issue_134':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_134));
      case 'issue_137':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_137));
      case 'issue_138':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_138));
      case 'issue_145':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_145));
      case 'issue_151':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_151));
      case 'issue_155':
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_155));
      default:
        emit(state.copyWith(selectionChoice: SelectionChoice.issue_114));
    }
  }
}
