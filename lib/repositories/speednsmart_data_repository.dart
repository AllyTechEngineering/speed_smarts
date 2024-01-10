import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:speed_smarts/models/speednsmart_data_model.dart';

class SpeedNSmartDataRepository {
  Future<List<SpeedNSmartDataModel>> getSpeedNSmartData(
      String jsonFileName, String speedNSmartChoiceName) async {
    try {
      // debugPrint(
      //     'in RulesDataRepository first part of try file name: $jsonFileName\n choice name:  $speedNSmartChoiceName');
      final String speedNSmartDataResults = await rootBundle.loadString(jsonFileName);
      // debugPrint('raw json file speedNSmartDataResults: $speedNSmartDataResults');
      final speedNSmartDataResultsJson = await jsonDecode(speedNSmartDataResults);
      // debugPrint('decode json file speedNSmartDataResultsJson: $speedNSmartDataResultsJson');
      final rulesDataResultsList = List<SpeedNSmartDataModel>.of(
        speedNSmartDataResultsJson[speedNSmartChoiceName].map<SpeedNSmartDataModel>(
          (json) {
            return SpeedNSmartDataModel(
              sectionNumber: json['sectionNumber'],
              sectionTitle: json['sectionTitle'],
              sectionSubTitle: json['sectionSubTitle'],
              sectionBody: json['sectionBody'],
              sectionImageOne: json['sectionImageOne'],
              sectionImageTwo: json['sectionImageTwo'],
              sectionImageThree: json['sectionImageThree'],
            );
          },
        ),
      );
      // debugPrint('RulesDataRepository rulesDataResultsList: $rulesDataResultsList');
      return rulesDataResultsList;
    } catch (e) {
      throw 'error $e';
    }
  }
}
