import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/mytext.dart';
import '../Provider/apis.dart';


class MyTile extends StatefulWidget {
  final String title;
  final MaterialStateProperty<Color>? color;

  final OutlinedBorder? boarder;
  MyTile({
    Key? key,
    required this.title,
    this.boarder,
    this.color,
  }) : super(key: key);

  @override
  State<MyTile> createState() => _State();
}

class _State extends State<MyTile> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiDB>(context);
    return ListTile(
      leading: MyText(
        context: context,
        title: widget.title,
        weight: FontWeight.w500,
      ),
      trailing: Checkbox(
        checkColor: Colors.grey,
        fillColor: widget.color,
        shape: widget.boarder,
        value: value,
        onChanged: (newvalue) {
          setState(() {
            value = newvalue!;

            value == false
                ? provider.regionList.clear()
                : provider.regionList.add(widget.title);
          });
        },
      ),
    );
  }
}

class Timetile extends StatefulWidget {
  final String title;
  final MaterialStateProperty<Color>? color;

  final OutlinedBorder? boarder;
  const Timetile({Key? key, required this.title, this.color, this.boarder})
      : super(key: key);

  @override
  State<Timetile> createState() => _TimetileState();
}

class _TimetileState extends State<Timetile> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiDB>(context);
    return ListTile(
      leading: MyText(
        context: context,
        title: widget.title,
        weight: FontWeight.w500,
      ),
      trailing: Checkbox(
        checkColor: Colors.grey,
        fillColor: widget.color,
        shape: widget.boarder,
        value: value,
        onChanged: (newvalue) {
          setState(() {
            value = newvalue!;

            value == false
                ? provider.timeZoneList.clear()
                : provider.timeZoneList.add(widget.title);
          });
        },
      ),
    );
  }
}

class LangTile extends StatefulWidget {
  final String title;
  final MaterialStateProperty<Color>? color;

  final OutlinedBorder? boarder;
  const LangTile({Key? key, required this.title, this.color, this.boarder})
      : super(key: key);

  @override
  State<LangTile> createState() => _LangTileState();
}

class _LangTileState extends State<LangTile> {
  @override
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiDB>(context);

    return ListTile(
      leading: MyText(
        context: context,
        title: widget.title,
        weight: FontWeight.w500,
      ),
      trailing: Checkbox(
        checkColor: Colors.grey,
        fillColor: widget.color,
        shape: widget.boarder,
        value: value,
        onChanged: (newvalue) {
          setState(() {
            value = newvalue!;
            value == false
                ? provider.languageList.clear()
                : provider.languageList.add(widget.title);
          });
        },
      ),
    );
  }
}