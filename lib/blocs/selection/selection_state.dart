part of 'selection_cubit.dart';

enum SelectionChoice {
  issue_114,
  issue_118,
  issue_126,
  issue_132,
  issue_134,
  issue_137,
  issue_138,
  issue_145,
  issue_151,
  issue_155,
}

class SelectionState extends Equatable {
  final SelectionChoice selectionChoice;
  const SelectionState({
    this.selectionChoice = SelectionChoice.issue_114,
  });

  factory SelectionState.initial() {
    return const SelectionState();
  }

  @override
  List<Object> get props => [selectionChoice];

  SelectionState copyWith({
    SelectionChoice? selectionChoice,
  }) {
    return SelectionState(
      selectionChoice: selectionChoice ?? this.selectionChoice,
    );
  }

  @override
  String toString() => 'SelectionState(selectionChoice: $selectionChoice)';
}
