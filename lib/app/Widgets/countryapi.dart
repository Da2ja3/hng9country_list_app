import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/theme_provider.dart';

class countryApiDetails extends StatelessWidget {
  const countryApiDetails({
    Key? key,
    required this.provider,
    required this.info,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final ThemeProvider provider;
  final info;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: provider.isDark ? Colors.white : Colors.black,
            fontSize: MediaQuery.textScaleFactorOf(context) * 20,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: provider.isDark ? Colors.grey : Colors.grey,
            fontSize: MediaQuery.textScaleFactorOf(context) * 20,
          ),
        ),
      ],
    );
  }
}