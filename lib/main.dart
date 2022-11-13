import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

import 'app/Country Block/Sort Groups/bloc_observer.dart';
import 'app/Country Block/Sort Groups/sort_group_bloc.dart';
import 'app/Country Block/countrybloc.dart';
import 'app/Models/country_list.dart';
import 'app/Screen/homescreen.dart';



void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: CountryBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RepositoryProvider<CountryRepository>(
        create: (context) => CountryRepository(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<CountryBloc>(
              create: (context) => CountryBloc(
                countryRepository:
                RepositoryProvider.of<CountryRepository>(context),
              ),
            ),
            BlocProvider<SortGroupCubit>(
              create: (context) => SortGroupCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // ThemeData(
            //   colorSchemeSeed: Colors.deepOrange,
            //   useMaterial3: true,
            // ),
            home: HomeScreen(),


            ),
          ),
        );
  }
}