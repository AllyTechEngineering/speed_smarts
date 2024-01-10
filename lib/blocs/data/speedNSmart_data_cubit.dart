import 'dart:async';
import 'package:equatable/equatable.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_smarts/models/speednsmart_data_model.dart';
import 'package:speed_smarts/repositories/speednsmart_data_repository.dart';

import '../selection/selection_cubit.dart';

part 'speednsmart_data_state.dart';

class SpeedNSmartDataCubit extends Cubit<SpeedNSmartDataState> {
  late final StreamSubscription selectionCubitSubscription;
  final SelectionCubit selectionCubit;
  final SpeedNSmartDataRepository speedNSmartDataRepository;

  SpeedNSmartDataCubit(
      {required this.speedNSmartDataRepository, required this.selectionCubit})
      : super(InitialSpeedNSmartDataState()) {
    selectionCubitSubscription =
        selectionCubit.stream.listen((SelectionState selectionState) {
      getSpeedNSmartDataResults();
    });
    getSpeedNSmartDataResults();
  }
  void getSpeedNSmartDataResults() async {
    try {
      debugPrint(
          'SpeedNSmartDataCubit getSpeedNSmartDataResults selectionChoice: ${selectionCubit.state.selectionChoice.name}');
      emit(LoadingSpeedNSmartDataState());

      String tempSelectionChoiceCode =
          selectionCubit.state.selectionChoice.name;
      switch (tempSelectionChoiceCode) {
        case 'partOneFundamental':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_one_fundamental_rules.json',
                  'partOneFundamental'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionA':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_two_section_a_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionA'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionB':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_two_section_b_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionB'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionC':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_two_section_c_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionC'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionD':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_two_section_d_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionD'),
            ),
          );
        case 'partThreeConduct':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_three_conduct_of_race.json',
                  'partThreeConduct'),
            ),
          );
        case 'partFourOtherSectionA':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_four_section_a_other_requirements.json',
                  'partFourOtherSectionA'),
            ),
          );
        case 'partFourOtherSectionB':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_four_section_b_other_requirements.json',
                  'partFourOtherSectionB'),
            ),
          );
        case 'partFiveProtestsSectionA':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_five_section_a_protests.json',
                  'partFiveProtestsSectionA'),
            ),
          );
        case 'partFiveProtestsSectionB':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_five_section_b_protests.json',
                  'partFiveProtestsSectionB'),
            ),
          );
        case 'partFiveProtestsSectionC':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_five_section_c_protests.json',
                  'partFiveProtestsSectionC'),
            ),
          );
        case 'partFiveProtestsSectionD':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_five_section_d_protests.json',
                  'partFiveProtestsSectionD'),
            ),
          );
        case 'partSixEntry':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_six_entry.json',
                  'partSixEntry'),
            ),
          );
        case 'partSevenRace':
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_seven_race.json',
                  'partSevenRace'),
            ),
          );
        default:
          emit(
            LoadedSpeedNSmartDataState(
              await speedNSmartDataRepository.getSpeedNSmartData(
                  'lib/assets/json_data_files/part_one_fundamental_rules.json',
                  'partOneFundamental'),
            ),
          );
      }
    } catch (e) {
      debugPrint('Error is: $e');
      rethrow;
    }
  }

  @override
  Future<void> close() {
    selectionCubitSubscription.cancel();
    return super.close();
  }
}
