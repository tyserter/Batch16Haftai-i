
MarksObtainInMaths marksObj = new MarksObtainInMaths();

marksObj.addMapping('0111CE115', 35);
marksObj.addMapping('0111CE120', 48);
marksObj.printRollNo();
marksObj.printMarks();

Set<String> uniqueRollNumberSet = marksObj.getUniqueRollNo();
System.debug('Unique Roll Number Set:');
System.debug(uniqueRollNumberSet);

List<Integer> marksObtainList = marksObj.getMarksList();
System.debug('Marks Obtained List:');
System.debug(marksObtainList);