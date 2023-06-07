Map<String, Decimal> currISOCodeAndExchangeRateMap = new Map<String, Decimal>{
    'AUD' => 0.73,
    'CAD' => 0.78,
    'EUR' => 1.13,
    'NZD' => 0.68,
    'INR' => 0.013
};

// 2. Fetch the currency conversion rate for any one currency ISO code and print it.
Decimal conversionRate = currISOCodeAndExchangeRateMap.get('EUR');
System.debug('Conversion rate for EUR: ' + conversionRate);

/*3. Maps – Iteration
1. Store the currency exchange rate values in a Map named 'currISOCodeAndExchangeRateMap' for any 5 currency ISO codes. Like below:
a. AUD => 0.73
b. CAD => 0.78
c. EUR => 1.13
d. NZD => 0.68
e. INR => 0.013
2. Fetch the currency conversion rate for any one currency ISO code and print it.
3. Check if the above Map has a conversion rate for SAD ISO code.
4. Collect all the currency ISO codes from currISOCodeAndExchangeRateMap for which the
conversion rate is >= 1 in one variable and other iso codes in other variables.
Expected Output: EUR – In one variable. AUD, CAD, NZD, and INR – In another variable.*/
Map<string, decimal> currISOCodeAndExchangeRateMap = new Map<string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
System.debug(currISOCodeAndExchangeRateMap);
//2
decimal conversionRate = currISOCodeAndExchangeRateMap.get('EUR');
System.debug('conversion rate for eur '+conversionRate);
//3
Boolean checkSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug('contains SAD? '+checkSAD);
//4
Set<string> greaterthan1 = new Set<string>();
Set<string> lessthan1 = new Set<string>();
for (string isoCode : currISOCodeAndExchangeRateMap.keySet()) {
    if (currISOCodeAndExchangeRateMap.get(isoCode)>=1) {
        greaterthan1.add(isoCode);
    }else {
        lessthan1.add(isoCode);
    }
    System.debug('greater than or equal 1 = '+greaterthan1);
    System.debug('less than 1 = '+lessthan1);
}