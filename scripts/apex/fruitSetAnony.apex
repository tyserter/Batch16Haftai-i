//a. Print fruits name from fruitsSet one by one.

set<string> fruitsSet = new set<string>();
fruitsSet.add('Apple');
fruitsSet.add('Strawberry');
fruitsSet.add('Orange');
fruitsSet.add('Watermelon');


for(string fruit: fruitsSet){
    system.debug('fruits name ='+fruit);

}


//b. Print the size of the fruitsSet.
integer size = fruitsSet.size();
system.debug('size of fruits '+ size);

//c. Add a fruit name "Apricot" to the fruitsSet and print the fruitsSet.
fruitsSet.add('Apricot');
system.debug('after apricot ='+fruitsSet);

//d. Check if the fruitsSet contains the fruit 'Apricot'
Boolean fruitCheck = fruitsSet.contains('Apricot');
system.debug(fruitCheck);

//e. Check if the fruitsSet is empty?

Boolean checkEmpty =!fruitsSet.isEmpty();
system.debug(checkEmpty);