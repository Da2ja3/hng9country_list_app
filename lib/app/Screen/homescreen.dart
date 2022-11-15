import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/cbox.dart';
import '../Constants/constant.dart';
import '../Constants/tfilter.dart';
import '../Constants/theme_provider.dart';
import '../Models/country_list.dart';
import '../Provider/apis.dart';


class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero).then((value) {
      final provider2 = Provider.of<ApiDB>(context, listen: false);
      provider2.getCountryList();
    });
    getConnectivity();
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
            (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    final provider2 = Provider.of<ApiDB>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.isDark ? DarkModeColor : Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBbox(
                    context: context,
                    widget: Image.asset(
                      logo,
                    ),
                  ),
                  CustomBbox(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 8,
                    color: provider.isDark ? const Color(0xff202A44) : Colors.white,
                    shapes: BoxShape.circle,
                    widget: Center(
                      child: IconButton(
                        onPressed: provider.toggleTheme,
                        icon: Icon(
                          provider.isDark ? DarkmodeIcon : lightmodeIcon,
                          color:
                          provider.isDark ? Colors.white : lightModeColor,
                        ),
                      ),
                    ),
                    context: context,
                  ),
                ],
              ),
              spaceHeight,
              TextField(
                onChanged: (value) {
                  provider2.searchCountry(value);
                },
                decoration: InputDecoration(
                  fillColor: provider.isDark ? const Color(0xff202A44) : Colors.grey,
                  filled: true,
                  hintText: 'Search Country',
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: provider.isDark ? Colors.white : Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              spaceHeight,
              Translaton_Filter(provider: provider),
              spaceHeight,
              Flexible(
                child: ApiList(provider2: provider2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialogBox() => showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('No Connection'),
      content: const Text('Please check your internet connectivity'),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            Navigator.pop(context, 'Cancel');
            setState(() => isAlertSet = false);
            isDeviceConnected =
            await InternetConnectionChecker().hasConnection;
            if (!isDeviceConnected && isAlertSet == false) {
              showDialogBox();
              setState(() => isAlertSet = true);
            }
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}