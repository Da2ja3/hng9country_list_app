class Country {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  Flags? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;

  Country(
      {this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.borders,
        this.area,
        this.demonyms,
        this.flag,
        this.maps,
        this.population,
        this.gini,
        this.fifa,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    tld = json['tld'].cast<String>();
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? new Idd.fromJson(json['idd']) : null;
    capital = json['capital'].cast<String>();
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? new Translations.fromJson(json['translations'])
        : null;
    latlng = json['latlng'].cast<int>();
    landlocked = json['landlocked'];
    borders = json['borders'].cast<String>();
    area = json['area'];
    demonyms = json['demonyms'] != null
        ? new Demonyms.fromJson(json['demonyms'])
        : null;
    flag = json['flag'];
    maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ? new Gini.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    car = (json['car'] != null ? new Car.fromJson(json['car']) : null)!;
    timezones = json['timezones'].cast<String>();
    continents = json['continents'].cast<String>();
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? new Flags.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? new CapitalInfo.fromJson(json['capitalInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final name = this.name;
    if (name != null) {
      data['name'] = name.toJson();
    }
    data['tld'] = this.tld;
    data['cca2'] = this.cca2;
    data['ccn3'] = this.ccn3;
    data['cca3'] = this.cca3;
    data['cioc'] = this.cioc;
    data['independent'] = this.independent;
    data['status'] = this.status;
    data['unMember'] = this.unMember;
    final currencies = this.currencies;
    if (currencies != null) {
      data['currencies'] = currencies.toJson();
    }
    final idd = this.idd;
    if (idd != null) {
      data['idd'] = idd.toJson();
    }
    data['capital'] = this.capital;
    data['altSpellings'] = this.altSpellings;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    final languages = this.languages;
    if (languages != null) {
      data['languages'] = languages.toJson();
    }
    final translations = this.translations;
    if (translations != null) {
      data['translations'] = translations.toJson();
    }
    data['latlng'] = this.latlng;
    data['landlocked'] = this.landlocked;
    data['borders'] = this.borders;
    data['area'] = this.area;
    final demonyms = this.demonyms;
    if (demonyms != null) {
      data['demonyms'] = demonyms.toJson();
    }
    data['flag'] = this.flag;
    final maps = this.maps;
    if (maps != null) {
      data['maps'] = maps.toJson();
    }
    data['population'] = this.population;
    final gini = this.gini;
    if (gini != null) {
      data['gini'] = gini.toJson();
    }
    data['fifa'] = this.fifa;
    final car = this.car;
    if (car != null) {
      data['car'] = car.toJson();
    }
    data['timezones'] = this.timezones;
    data['continents'] = this.continents;
    final flags = this.flags;
    if (flags != null) {
      data['flags'] = flags.toJson();
    }
    final coatOfArms = this.coatOfArms;
    if (coatOfArms != null) {
      data['coatOfArms'] = coatOfArms.toJson();
    }
    data['startOfWeek'] = this.startOfWeek;
    final capitalInfo = this.capitalInfo;
    if (capitalInfo != null) {
      data['capitalInfo'] = capitalInfo.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? new NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    final nativeName = this.nativeName;
    if (nativeName != null) {
      data['nativeName'] = nativeName.toJson();
    }
    return data;
  }
}

class NativeName {
  Ara? ara;

  NativeName({this.ara});

  NativeName.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Ara.fromJson(json['ara']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final ara = this.ara;
    if (ara != null) {
      data['ara'] = ara.toJson();
    }
    return data;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({this.official, this.common});

  Ara.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}

class Currencies {
  MRU? mRU;

  Currencies({this.mRU});

  Currencies.fromJson(Map<String, dynamic> json) {
    mRU = json['MRU'] != null ? new MRU.fromJson(json['MRU']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final mRU = this.mRU;
    if (mRU != null) {
      data['MRU'] = mRU.toJson();
    }
    return data;
  }
}

class MRU {
  String? name;
  String? symbol;

  MRU({this.name, this.symbol});

  MRU.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['root'] = this.root;
    data['suffixes'] = this.suffixes;
    return data;
  }
}

class Languages {
  String? ara;

  Languages({this.ara});

  Languages.fromJson(Map<String, dynamic> json) {
    ara = json['ara'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ara'] = this.ara;
    return data;
  }
}

class Translations {
  Ara? ara;
  Ara? bre;
  Ara? ces;
  Ara? cym;
  Ara? deu;
  Ara? est;
  Ara? fin;
  Eng? fra;
  Ara? hrv;
  Ara? hun;
  Ara? ita;
  Ara? jpn;
  Ara? kor;
  Ara? nld;
  Ara? per;
  Ara? pol;
  Ara? por;
  Ara? rus;
  Ara? slk;
  Ara? spa;
  Ara? swe;
  Ara? tur;
  Ara? urd;
  Ara? zho;

  Translations(
      {this.ara,
        this.bre,
        this.ces,
        this.cym,
        this.deu,
        this.est,
        this.fin,
        this.fra,
        this.hrv,
        this.hun,
        this.ita,
        this.jpn,
        this.kor,
        this.nld,
        this.per,
        this.pol,
        this.por,
        this.rus,
        this.slk,
        this.spa,
        this.swe,
        this.tur,
        this.urd,
        this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Ara.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? new Ara.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? new Ara.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? new Ara.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? new Ara.fromJson(json['deu']) : null;
    est = json['est'] != null ? new Ara.fromJson(json['est']) : null;
    fin = json['fin'] != null ? new Ara.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? new Ara.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? new Ara.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? new Ara.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? new Ara.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? new Ara.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? new Ara.fromJson(json['nld']) : null;
    per = json['per'] != null ? new Ara.fromJson(json['per']) : null;
    pol = json['pol'] != null ? new Ara.fromJson(json['pol']) : null;
    por = json['por'] != null ? new Ara.fromJson(json['por']) : null;
    rus = json['rus'] != null ? new Ara.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? new Ara.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? new Ara.fromJson(json['spa']) : null;
    swe = json['swe'] != null ? new Ara.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? new Ara.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? new Ara.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? new Ara.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final ara = this.ara;
    if (ara != null) {
      data['ara'] = ara.toJson();
    }
    final bre = this.bre;
    if (bre != null) {
      data['bre'] = bre.toJson();
    }
    final ces = this.ces;
    if (ces != null) {
      data['ces'] = ces.toJson();
    }
    final cym = this.cym;
    if (cym != null) {
      data['cym'] = cym.toJson();
    }
    final deu = this.deu;
    if (deu != null) {
      data['deu'] = deu.toJson();
    }
    final est = this.est;
    if (est != null) {
      data['est'] = est.toJson();
    }
    final fin = this.fin;
    if (fin != null) {
      data['fin'] = fin.toJson();
    }
    final fra = this.fra;
    if (fra != null) {
      data['fra'] = fra.toJson();
    }
    final hrv = this.hrv;
    if (hrv != null) {
      data['hrv'] = hrv.toJson();
    }
    final hun = this.hun;
    if (hun != null) {
      data['hun'] = hun.toJson();
    }
    final ita = this.ita;
    if (ita != null) {
      data['ita'] = ita.toJson();
    }
    final jpn = this.jpn;
    if (jpn != null) {
      data['jpn'] = jpn.toJson();
    }
    final kor = this.kor;
    if (kor != null) {
      data['kor'] = kor.toJson();
    }
    final nld = this.nld;
    if (nld != null) {
      data['nld'] = nld.toJson();
    }
    final per = this.per;
    if (per != null) {
      data['per'] = per.toJson();
    }
    final pol = this.pol;
    if (pol != null) {
      data['pol'] = pol.toJson();
    }
    final por = this.por;
    if (por != null) {
      data['por'] = por.toJson();
    }
    final rus = this.rus;
    if (rus != null) {
      data['rus'] = rus.toJson();
    }
    final slk = this.slk;
    if (slk != null) {
      data['slk'] = slk.toJson();
    }
    final spa = this.spa;
    if (spa != null) {
      data['spa'] = spa.toJson();
    }
    final swe = this.swe;
    if (swe != null) {
      data['swe'] = swe.toJson();
    }
    final tur = this.tur;
    if (tur != null) {
      data['tur'] = tur.toJson();
    }
    final urd = this.urd;
    if (urd != null) {
      data['urd'] = urd.toJson();
    }
    final zho = this.zho;
    if (zho != null) {
      data['zho'] = zho.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final eng = this.eng;
    if (eng != null) {
      data['eng'] = eng.toJson();
    }
    final fra = this.fra;
    if (fra != null) {
      data['fra'] = fra.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }
}

class Gini {
  double? d2014;

  Gini({this.d2014});

  Gini.fromJson(Map<String, dynamic> json) {
    d2014 = json['2014'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2014'] = this.d2014;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signs'] = this.signs;
    data['side'] = this.side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}