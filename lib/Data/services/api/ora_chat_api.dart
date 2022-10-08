import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';

class OraChatApi {
  Future<dynamic> getChatData() async {
    try {
      var url = 'assets/jsons/ora_chat.json';
      String data = await rootBundle.loadString(url);
      return {"error": false, "value": jsonDecode(data)};
    } catch (error) {
      log("getCountriesNames error: $error");
      return {"error": true};
    }
  }
}
/*

getCoachProfileInfo(playerID) async {
    String data = await rootBundle.loadString('assets/json/coach_profile.json');
    List jsonResult = json.decode(data)["coach_profile"];
    List coachesList =
        jsonResult.map((e) => CoachProfileModel.fromJson(e)).toList();

    CoachProfileModel coachProfile = coachesList.firstWhere(
      (e) => e.coachId == playerID,
      orElse: () => null,
    );

    emit(GetCoachProfileState(coachProfile));
  }

 */