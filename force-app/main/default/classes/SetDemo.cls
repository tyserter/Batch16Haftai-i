public with sharing class SetDemo {
    public static void citySet(){
        //set of strimg
        set<string>cities = new Set<string>();
        cities.add('TOKYO');
        cities.add('lİSBON');
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Berlin');
        //prints alphabetically
        system.debug('cities set ' + cities);

    }
    public static void randomIntegers(){
        Set<integer> intSet = new Set<integer>(); 
        intSet.add(15);
        intSet.add(10);
        intSet.add(21);
        intSet.add(10);
        system.debug('int set '+intSet);
    }
    public static void setFromList(){
        //we will crate set from list
        list<integer>l1 = new list<integer>{10, 15, 22, 77, 55, 99,10, 77, 55};
        system.debug('l1= ');

        //create new set and add all elements from list to set
        set<integer>s1= new Set<Integer>();
        s1.addAll(l1);
        system.debug('s1 ='+s1);
    }
    public static set<integer>setFromList(list<integer> l1){
        system.debug('L1 parameter= ' + l1);
        Set<Integer> s1 =new Set<Integer>();

        return s1;
    }
}