import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/cbox.dart';
import '../Provider/apis.dart';
import 'alphabets.dart';
import 'countrydetails.dart';



class ApiList extends StatelessWidget {
  const ApiList({
    Key? key,
    required this.provider2,
  }) : super(key: key);

  final ApiDB provider2;

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiDB>(
      builder: (context, snapshot, _) {
        return provider2.isLoading == true
            ? Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(
              Color(0xff5771F9),
            ),
          ),
        )
            : Container(
          height: MediaQuery.of(context).size.height / 1,
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: MyAlphabets.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  provider2.controller.text.isEmpty ||
                      provider2.controller.text == '' ||
                      snapshot.searchResult
                          .where((element) =>
                      element['name']['official']
                          .toString()
                          .toUpperCase()
                          .substring(0, 1) ==
                          MyAlphabets[index].toString())
                          .length ==
                          1
                      ? Text(
                    MyAlphabets[index].toString(),
                  )
                      : SizedBox.shrink(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.searchResult
                        .where((element) =>
                    element['name']['official']
                        .toString()
                        .toUpperCase()
                        .substring(0, 1) ==
                        MyAlphabets[index].toString())
                        .length,
                    itemBuilder: (context, i) {
                      List nestList = List.from(snapshot.searchResult
                          .where((element) =>
                      element['name']['official']
                          .toString()
                          .toUpperCase()
                          .substring(0, 1) ==
                          MyAlphabets[index].toString()));

                      var info = nestList[i];
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CountryDetails(
                                  countryDetails: info,
                                ),
                              ));
                        },
                        title: Text('${info['name']['official']}'),
                        subtitle: Text(info['capital'] != null
                            ? '${info['capital'][0]}'
                            : 'nothing found'),
                        leading: CustomBbox(
                          context: context,
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.height / 20,
                          radius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:
                            NetworkImage('${info['flags']['png']}'),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

// print(snapshot.decodeData
//     .where((element) =>
//         element['name']['official']
//             .toString()
//             .toUpperCase()
//             .substring(0, 1) ==
//         'A')
//     .length);