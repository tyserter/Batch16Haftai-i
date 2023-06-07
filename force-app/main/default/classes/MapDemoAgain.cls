public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        system.debug('student map => ' + map1);

        //WE Can get corresponding value from ONE key. Use .get(key)
            //We CANNOT get KEY from VALUE
        integer rollNo = 1011;
        string s11 = map1.get(rollNo);
        system.debug(rollNo + ' studnet name is ' + s11);


        integer rollNo2 = 1055;
        //check if rollNo2 is present in map and print value if present, else print NOT PRESENT
            //containsKey -> returns true or false
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('Not present in map');
        }
    }

    public static void printMap2() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        // how to get all key
        //keySet() method---set<key_datatype>
        Set<Integer> allKeys = map1.keySet();
        System.debug(('all roll numbers ' + allKeys));
        System.debug('number of roll numbers are ' + allKeys.size());

        // we get the stdent names

        list<string> allValues = map1.values();
        system.debug('all names are ' + allValues);
        }
        public static void printMap3() {
            map<integer, string> map1 = new map<integer, string>();
            map1.put(1011, 'Alex');
            map1.put(1022, 'Brian');
            map1.put(1033, 'Monica');
            map1.put(1011, 'Amar');
            map1.put(1055, 'Monica');

            //putAll method
            Map<integer,String> map2 = new Map<integer,String>();
            map2.putAll(map1);
            System.debug(map2);

    }
    public static void printMap4() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        //print every key-value
        //rollNo is 1011, student name is 'Amar'
        //for each loop
        //there is no for each loop map map directly
        Set<Integer>allRolNo=map1.keySet();
        //1011,1022,1033,1055
        for (integer rollNo : allRolNo) {
            System.debug(rollNo);
            String s11=map1.get(rollNo);
            System.debug('roll No : ' + rollNo + ', name' + s11);
            
        }
    
    }
    public static void printMap5(){
        list<string> l1 = new list<string>{'Alex','Benjamin'};
        list<string> l2 = new list<string>{'John', 'Jane'};
        list<string> l3 = new list<string>{'David', 'Peter'};


        //map of department -> all members in it
        map<string, list<string>> map99 = new map<string, list<string>>();

        map99.put('IT', l1);
        map99.put('Sales', l2);
        map99.put('Service', l3);

        system.debug(map99);

        for (string eachDept : map99.keySet()) {
            system.debug('Team name: '+eachDept+ '= Team members = '+map99.get(eachDept));

            for (string eachName : map99.get(eachDept
            )) {
                System.debug((eachName+ 'is in '+eachDept));
                
            }
            
        }
    }
}
       