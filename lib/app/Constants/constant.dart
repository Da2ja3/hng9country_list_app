import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> sortItems = [
  'Name',
  'Area',
  'Currency',
  'Population',
];
final List<String> groupItems = [
  'First Letter',
  'Continent',
  'Region',
  'Subregion',
  'Ungrouped',
];

const String baseUrl = "https://restcountries.com/v3.1/all";




const IconData lightmodeIcon = Icons.wb_sunny_outlined;
const IconData DarkmodeIcon = Icons.nights_stay;
const DarkModeColor = Color(0xff27285C);
const lightModeColor = Colors.black;
const smallHeight = SizedBox(height: 4);
const spaceHeight = SizedBox(height: 10);
const logo = 'assets/image/country logo.png';