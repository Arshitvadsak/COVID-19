class Corona {
  final String country;
  final String flag;
  final int cases;
  final int deaths;
  final int active;
  final int critical;
  final int population;
  final int oneCasePerPeople;
  final int oneDeathPerPeople;


  Corona({
    required this.country,
    required this.flag,
    required this.cases,
    required this.deaths,
    required this.active,
    required this.critical,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
  });

  factory Corona.fromMap({required Map data}) {
    return Corona(
      country: data['country'],
        flag: data['countryInfo']['flag'],
        cases: data['cases'],
        deaths: data['deaths'],
        active: data['active'],
        critical:data['critical'] ,
        population:data['population'] ,
        oneCasePerPeople:data['oneCasePerPeople'] ,
        oneDeathPerPeople: data['oneDeathPerPeople'],
    );
  }
}
