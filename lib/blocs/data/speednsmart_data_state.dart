part of 'speedNSmart_data_cubit.dart';

abstract class SpeedNSmartDataState extends Equatable {}

class InitialSpeedNSmartDataState extends SpeedNSmartDataState {
  @override
  List<Object> get props => [];
}

class LoadingSpeedNSmartDataState extends SpeedNSmartDataState {
  @override
  List<Object> get props => [];
}

class LoadedSpeedNSmartDataState extends SpeedNSmartDataState {
  LoadedSpeedNSmartDataState(
    this.loadedSpeedNSmartData,
  );

  final List<SpeedNSmartDataModel> loadedSpeedNSmartData;

  @override
  List<Object> get props => [loadedSpeedNSmartData];

  @override
  String toString() => 'LoadedSpeedNSmartDataState(SpeedNSmartData: $loadedSpeedNSmartData)';
}

class ErrorSpeedNSmartDataState extends SpeedNSmartDataState {
  @override
  List<Object> get props => [];
}
