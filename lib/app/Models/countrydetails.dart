
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Constants/cbox.dart';
import '../Constants/constant.dart';
import '../Constants/mytext.dart';
import '../Constants/theme_provider.dart';
import '../Widgets/countryapi.dart';


class CountryDetails extends StatefulWidget {
  final countryDetails;
  const CountryDetails({Key? key, this.countryDetails}) : super(key: key);

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  var info;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    info = widget.countryDetails;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.isDark ? DarkModeColor : Colors.white,
        appBar: AppBar(
          backgroundColor: provider.isDark ? DarkModeColor : Colors.white,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
            color: provider.isDark ? Colors.white : Colors.black,
          ),
          title: MyText(
            context: context,
            title: '${info['name']['official']}',
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomBbox(
                context: context,
                color: Colors.red,
                width: MediaQuery.of(context).size.height / 1,
                height: MediaQuery.of(context).size.height / 5,
                image: DecorationImage(
                  image: selectedIndex == 0
                      ? NetworkImage('${info['coatOfArms']['png']}')
                      : NetworkImage('${info['flags']['png']}'),
                  fit: BoxFit.cover,
                ),
                radius: BorderRadius.circular(20),
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              selectedIndex = 0;
                              selectedIndex == 0
                                  ? NetworkImage('${info['coatOfArms']['png']}')
                                  : selectedIndex == 1
                                  ? NetworkImage('${info['flags']['png']}')
                                  : null;
                              setState(() {});
                            },
                            icon: Icon(Icons.arrow_back_ios_rounded),
                            splashColor: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectedIndex = 1;
                            selectedIndex == 0
                                ? NetworkImage('${info['coatOfArms']['png']}')
                                : selectedIndex == 1
                                ? NetworkImage('${info['flags']['png']}')
                                : null;
                            setState(() {});
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          splashColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              spaceHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Population: ',
                subtitle: '${info['population']}',
              ),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Region: ',
                subtitle: '${info['region']}',
              ),
              smallHeight,
              countryApiDetails(
                  provider: provider,
                  info: info,
                  title: 'Capital: ',
                  subtitle:
                  '${info['capital'] == null ? '' : info['capital'][0]}'),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Motto: ',
                subtitle: '${info['motto']}',
              ),
              spaceHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Language: ',
                subtitle:
                '${info['languages'] == null ? 'no data' : info['languages'].values.first}',
              ),
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Ethnic Group: ',
                subtitle: '${info['subregions']}',
              ),
              spaceHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Area: ',
                subtitle: '${info['area']}',
              ),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Currency: ',
                subtitle:
                '${info['currencies'] == null ? 'no data' : info['currencies'].values.first['name']}',
              ),
              spaceHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Timezone: ',
                subtitle: '${info['timezones'][0]}',
              ),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Start of the week: ',
                subtitle: '${info['startOfWeek']}',
              ),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Lat/Lon: ',
                subtitle: '${info['latlng'][0]}',
              ),
              smallHeight,
              countryApiDetails(
                provider: provider,
                info: info,
                title: 'Driving side: ',
                subtitle: '${info['car']['side']}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}