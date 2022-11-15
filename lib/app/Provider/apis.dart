import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Widgets/country_widget.dart';

class ApiDB extends ChangeNotifier {
  List regionList = [];
  List timeZoneList = [];
  List languageList = [];
  var countryName;
  var countryFlag;
  var decodeData;
  bool isLoading = true;
  var countryList;
  TextEditingController controller = TextEditingController();
  var searchResult;

  Future<Country?> getCountryList() async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': '*/*',
      "Authorization":
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMWNjYjE4YWE3M2MyODY1Zjc3NDg1NSIsInBob25lTnVtYmVyIjoiMDgwNTk3MDUzODMiLCJyb2xlIjoiQWRtaW4iLCJpYXQiOjE2NjU1MTc3NjYsImV4cCI6MTY2NTUyMTM2Nn0.EB-xxWOH7eklJZrNN0nMCIgVpwAq8Wr2zxKK5BKTxCs',
    };
    var url = Uri.parse('https://restcountries.com/v3.1/all');
    final response = await http.get(
      url,
      headers: requestHeaders,
    );

    try {
      isLoading = true;
      notifyListeners();

      if (response.statusCode == 200 || response.statusCode == 201) {
        decodeData = jsonDecode(utf8.decode(response.bodyBytes));
        searchResult = jsonDecode(utf8.decode(response.bodyBytes));
        // results = decodeData.map((e) => Country.fromJson(e)).toList;
        // print(results.length);
        //var resp = Country.fromJson(decodeData).currencies?.mRU;

        for (var i = 0; i < decodeData.length; i++) {
          //tapping into the api properties.
          countryList = ((decodeData[i]['timezones'][0]));
          countryFlag = ((decodeData[i]['continent']));
        }
        Future.delayed(Duration(seconds: 5)).then((value) {
          isLoading = false;
          notifyListeners();
        });

        notifyListeners();
      }
    } catch (e) {
      ScaffoldMessenger(
        child: SnackBar(
          content: Text('ERROR OCCURED CHECK INTERNET CONNECTION'),
          backgroundColor: Colors.red,
        ),
      );
      print(e);
    }
  }

  void searchCountry(String? query) {
    if (query!.isNotEmpty && query != "null") {
      controller.text = query;

      searchResult.clear;
      searchResult = List.from(
        decodeData.where((element) => element['name']['official']
            .toString()
            .toLowerCase()
            .contains(query.toString().toLowerCase())),
      );

      notifyListeners();
    } else {
      controller.clear();

      searchResult.clear;
      if (regionList.isNotEmpty) {
        searchResult = decodeData
            .where((element) => (element['continents'][0].toString() ==
            '${regionList[0].toString()}'))
            .toList();
        notifyListeners();
      } else if (timeZoneList.isNotEmpty) {
        searchResult = decodeData
            .where((element) => (element["timezones"][0].toString() ==
            "${timeZoneList[0].toString()}"))
            .toList();
        notifyListeners();
      } else if (regionList.isNotEmpty && timeZoneList.isNotEmpty) {
        searchResult = decodeData
            .where((element) =>
        (element['continents'][0].toString() ==
            "${regionList[0].toString()}") &&
            (element["timezones"][0].toString() ==
                "${timeZoneList[0].toString()}"))
            .toList();
        notifyListeners();
      } else {
        controller.clear();
        searchResult = List.from(decodeData);
        notifyListeners();
      }
    }
  }

  void searchLanguage(String? query) {
    if (query!.isNotEmpty && query != "null") {
      controller.text = query;

      searchResult.clear;
      searchResult = List.from(
        decodeData.where((element) => element['name']['official']
            .toString()
            .toLowerCase()
            .contains(query.toString().toLowerCase())),
      );

      notifyListeners();
    } else {
      controller.clear();

      searchResult.clear;
      if (languageList.isNotEmpty) {
        searchResult = decodeData
            .where((element) => (element["languages"].values.first.toString() ==
            "${languageList[0].toString()}"))
            .map();
        notifyListeners();
      } else if (languageList.isNotEmpty && regionList.isNotEmpty) {
        searchResult = decodeData
            .where((element) =>
        (element['continents'][0].toString() ==
            "${regionList[0].toString()}") &&
            (element["languages"].values.first.toString() ==
                "${languageList[0].toString()}"))
            .toList();
        notifyListeners();
      } else {
        controller.clear();
        searchResult = List.from(decodeData);
        notifyListeners();
      }
    }
  }
}