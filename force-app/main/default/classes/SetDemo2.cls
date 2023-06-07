public class SetDemo2 {
    public static void setToUpperCase(){
        //set of string
        set<string>cities = new Set<string>();
        cities.add('TOKYO');
        cities.add('lİSBON');
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Berlin');
        //prints alphabetically
        system.debug('cities set ' + cities);

        //convert each element to uppercse and add in new set
        Set<String>citiesUp = new set<string>();
        //for each loop on cities set
        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesUp.add(temp);
            
        }
        system.debug('uppercase = '+citiesUp);
            
        }
        
    }
    
