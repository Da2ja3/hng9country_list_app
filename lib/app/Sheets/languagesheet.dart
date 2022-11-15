
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/constant.dart';
import '../Constants/theme_provider.dart';
import '../Provider/apis.dart';
import '../Widgets/all_tiles.dart';
import '../Widgets/sheet_w.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({Key? key}) : super(key: key);

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    final provider2 = Provider.of<ApiDB>(context);
    return DraggableScrollableSheet(
      snap: false,
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: provider.isDark ? DarkModeColor : Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SheetWidget(
                    title: 'Filter',
                    widget: InkWell(
                      onTap: () {
                        provider2.searchLanguage("null");
                        Navigator.pop(context);
                        provider2.languageList.clear();

                        //
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Icon(Icons.close),
                      ),
                    ),
                  ),
                  spaceHeight,
                  LangTile(
                    title: 'Arabic',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Dutch',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'English',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Guaraní',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'French',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Spanish',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Russian',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Chinese',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Maldivian',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Bislama',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                  LangTile(
                    title: 'Berber',
                    boarder: CircleBorder(),
                    color: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey;
                      }
                      return Colors.grey;
                    }),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}