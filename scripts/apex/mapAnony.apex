map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Germany', 'Euro');
mapCC.put('Mexico', 'Peso');
mapCc.put('India', 'Rupees');
mapCC.put('India', 'Rupee');//this value will be present in map
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa', 'usd');
mapCC.put('El Salvador', 'BTC');
system.debug(mapCC);


//map has no ordering, so, no indexes.
//map has key
string curr1 = mapCC.get('India');//Rupee
string curr2 = mapCC.get('usa');

system.debug('India currency is ' + curr1);
system.debug('usa currency is ' + curr2);

string country1 = 'Turkiye';
string curr3 = mapCC.get(country1);
system.debug(country1 + ' currency is ' + curr3);

//set of keys, list of values alırız

set<string>allcountry = mapCC.keySet();
system.debug('all countries '+allcountry);

list<string>allcurrencies = mapCC.values();
system.debug('all currenc are: ' + allcurrencies);

Set<String> allCountries = mapCC.keySet();

for(string eachCountry: allCountries){
    string eachCurrency = mapCC.get(eachCountry);
    system.debug('Contry is ' + eachCountry+ ', its currency is ' + eachCurrency);
}