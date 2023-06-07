// a. sportList Question 3

List<String>listOfSport = new List<String>();
if(listOfSport.isEmpty()){
  system.debug('LIST IS EMPTY');
  
}else{ 
    system.debug('List IS nor Empty');

}
listOfSport.add('Football');
listOfSport.add('Baskeball'); 
listOfSport.add('Tennis'); 
listOfSport.add('Volleyball'); 

for(string eachlistOfSport:listOfSport){
    if (eachlistOfSport.contains('ball')){
        System.debug(eachlistOfSport + ' is played with ball ');

    }else{
         System.debug(eachlistOfSport + ' is not played with ball ');

    }
}

List<String>sportWithBall = new List<String>{'volleyball', ' handball', 'football', ' baseball'};
List<String>sportWithNotBall = new List<String>{'Tennis', 'Soccer', 'Cricket'};
system.debug(sportWithBall);
system.debug(sportWithBall.size());
system.debug(sportWithNotBall);
system.debug(sportWithNotBall.size());

if(sportWithBall.contains('volleyball') ){
    system.debug(sportWithBall.indexOf('voleyball'));

}else{
    System.debug('sport does not contains volleyball');

}
integer b = sportWithNotBall.indexOf('Cricket');
sportWithNotBall.remove(b);
system.debug('list after removing least favorite sport = ' + sportWithNotBall);
system.debug('size of list ' + sportWithNotBall.size());

//
// create a set of operating systems and add Windows and macOS by default
Set<String> operatingSystems = new Set<String>{'Windows', 'macOS'};

// add the given operating systems to the set
operatingSystems.addAll(new List<String>{'Linux', 'Android', 'iOS', 'Chrome OS', 'FreeBSD', 'Ubuntu', 'Debian', 'Fedora'});

// print the size of the set
System.debug('Size of set: ' + operatingSystems.size());

// concatenate all operating systems in a final string
String finalString = 'Operating systems added in set are ';
for (String os : operatingSystems) {
    finalString += '\'' + os + '\' & ';
}
finalString = finalString.substring(0, finalString.length() - 3) + '\nSize of FINAL STRING is ' + finalString.length();
System.debug(finalString);
