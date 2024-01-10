import 'package:equatable/equatable.dart';

class SpeedNSmartDataModel extends Equatable {
  final String sectionNumber;
  final String sectionTitle;
  final String sectionSubTitle;
  final String sectionBody;
  final String sectionImageOne;
  final String sectionImageTwo;
  final String sectionImageThree;
  const SpeedNSmartDataModel({
    this.sectionNumber = '',
    this.sectionTitle = '',
    this.sectionSubTitle = '',
    this.sectionBody = '',
    this.sectionImageOne = '',
    this.sectionImageTwo = '',
    this.sectionImageThree = '',
  });

  @override
  List<Object> get props {
    return [
      sectionNumber,
      sectionTitle,
      sectionSubTitle,
      sectionBody,
      sectionImageOne,
      sectionImageTwo,
      sectionImageThree,
    ];
  }

  SpeedNSmartDataModel copyWith({
    String? sectionNumber,
    String? sectionTitle,
    String? sectionSubTitle,
    String? sectionBody,
    String? sectionImageOne,
    String? sectionImageTwo,
    String? sectionImageThree,
  }) {
    return SpeedNSmartDataModel(
      sectionNumber: sectionNumber ?? this.sectionNumber,
      sectionTitle: sectionTitle ?? this.sectionTitle,
      sectionSubTitle: sectionSubTitle ?? this.sectionSubTitle,
      sectionBody: sectionBody ?? this.sectionBody,
      sectionImageOne: sectionImageOne ?? this.sectionImageOne,
      sectionImageTwo: sectionImageTwo ?? this.sectionImageTwo,
      sectionImageThree: sectionImageThree ?? this.sectionImageThree,
    );
  }

  @override
  String toString() {
    return 'SpeedNSmartDataModel(sectionNumber: $sectionNumber, sectionTitle: $sectionTitle, sectionSubTitle: $sectionSubTitle, sectionBody: $sectionBody, sectionImageOne: $sectionImageOne, sectionImageTwo: $sectionImageTwo, sectionImageThree: $sectionImageThree)';
  }
}
