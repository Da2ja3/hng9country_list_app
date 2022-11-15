import 'package:flutter/material.dart';

import '../Constants/mytext.dart';


class SheetWidget extends StatelessWidget {
  final String? title;
  final Widget? widget;
  const SheetWidget({
    Key? key,
    this.title,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: MyText(
          context: context,
          title: title,
          weight: FontWeight.w500,
        ),
        trailing: widget ?? SizedBox.shrink());
  }
}