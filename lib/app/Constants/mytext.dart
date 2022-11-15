import 'package:country_list_app/app/Constants/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


Widget MyText({
  required BuildContext context,
  final String? title,
  final Color? color,
  final double? size,
  final FontWeight? weight,
}) {
  final provider = Provider.of<ThemeProvider>(context);
  return Text(
    title!,
    style: TextStyle(
      fontWeight: weight,
      color: provider.isDark ? Colors.white : Colors.black,
      fontSize: size ?? MediaQuery.textScaleFactorOf(context) * 20,
    ),
  );
}