
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Constants/cbox.dart';
import '../Constants/constant.dart';
import '../Constants/mytext.dart';
import '../Constants/theme_provider.dart';
import '../Provider/apis.dart';
import '../Widgets/all_tiles.dart';
import '../Widgets/sheet_w.dart';

class Sheet extends StatefulWidget {
  Sheet({Key? key}) : super(key: key);

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    final provider2 = Provider.of<ApiDB>(context);
    return DraggableScrollableSheet(
      snap: false,
      initialChildSize: 0.3,
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
                        Navigator.pop(context);
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
                  ExpansionTile(
                    title: MyText(
                      context: context,
                      title: 'Continent',
                    ),
                    children: [
                      MyTile(
                        title: 'Africa',
                      ),
                      MyTile(
                        title: 'Antarctica',
                      ),
                      MyTile(
                        title: 'Asia',
                      ),
                      MyTile(
                        title: 'Europe',
                      ),
                      MyTile(
                        title: "North America",
                      ),
                      MyTile(
                        title: 'South America',
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: MyText(
                      context: context,
                      title: 'Time Zone',
                    ),
                    children: [
                      Timetile(
                        title: 'UTC-04:00',
                      ),
                      Timetile(
                        title: 'UTC-03:00',
                      ),
                      Timetile(
                        title: 'UTC+01:00',
                      ),
                      Timetile(
                        title: 'UTC+05:00',
                      ),
                      Timetile(
                        title: 'UTC-08:00',
                      ),
                      Timetile(
                        title: 'UTC-11:00',
                      ),
                      Timetile(
                        title: 'UTC-06:00',
                      ),
                      Timetile(
                        title: 'UTC+12:00',
                      ),
                    ],
                  ),
                  smallHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          provider2.timeZoneList.clear();
                          provider2.regionList.clear();
                        },
                        child: CustomBbox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.2,
                          color: provider.isDark ? DarkModeColor : Colors.white,
                          radius: BorderRadius.circular(10),
                          border: Border.all(
                            color:
                            provider.isDark ? Colors.white : Colors.black,
                            width: 2,
                          ),
                          context: context,
                          widget: Center(
                            child: MyText(
                              context: context,
                              title: 'Reset',
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          provider2.searchCountry("null");
                          provider2.regionList.clear();
                          provider2.timeZoneList.clear();
                          Navigator.pop(context);
                        },
                        child: CustomBbox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: Colors.deepOrange,
                          radius: BorderRadius.circular(5),
                          context: context,
                          widget: Center(
                            child: MyText(
                              context: context,
                              title: 'Show Result',
                            ),
                          ),
                        ),
                      ),
                    ],
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