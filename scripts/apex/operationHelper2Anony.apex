List<decimal> sumList = new List<decimal>();
sumList.add(15.15);//bunları yoruma alırsak null geliyor.
sumList.add(25.05);
sumList.add(30.45);
sumList.add(05.20);
sumList.add(75.50);
System.debug('Sum = ' + OperationsHelper2.sumOfList(sumList));
System.debug('Average = ' + OperationsHelper2.averageOfList(sumList));
System.debug('Highest = ' + OperationsHelper2.highiestOfList(sumList));
System.debug('Lowest = ' + OperationsHelper2.lowestOfList(sumList));