public class PlayingWithDates {
    /*Create a class name as ‘PlayingWithDates’ and inside this class create a method name as
‘printDateOutput’. Inside the printDateOutput method do the following:
a. Print today's date.
b. Create an instance of a date for 5th November 2789.
c. Create an instance of a date for 4th March 1459.
d. Create three Integer variables (dayInt, monthInt, yearInt) for storing day, month, year
respectively, and provide some default values. Using the three Integer variables (dayInt,
monthInt, yearInt) create a new date instance and save it in a new variable*/
public void printDateOutput(){
    date m = date.today();
    system.debug(m);

    date n = date.newInstance(2789, 11, 5);
    system.debug(n);

    date z = date.newInstance(1459, 3, 4);
    system.debug(z);

    Integer dayInt = 9;
    integer monthInt = 4;
    integer yearInt = 2023;

    date newDate = date.newInstance(yearInt, monthInt, dayInt);
    system.debug(newDate);  
}
/*Create a method ‘getMonthName’ in class PlayingWithDates
getMonthName takes one parameter DATE. Returns String.
We have to return ‘Month name’ from this method by getting month from full date.
Ex:
i) input: 2020-05-15
method should return May
ii) input: 2025-09-25
method should return September
Hint: use date methods to get month from date. and switch or if-else?
2. Create a class named OperationsHelper. [Optional]
Now create the following methods in the class as per the given requirement:
a. Method Name – largestOutOfTwoNumbers
Description - It should have two parameters that can accept two decimal numbers and
should return the largest number.
b. Method Name – smallestOutOfThreeNumbers
Description - It should have three parameters that can accept three decimal numbers
and should return the smallest number*/

public string getMonthName(date myDate){
    integer month = myDate.month();
    string gMonth;
    switch on month {
        when 1{
            gMonth = 'January';
        }
        when 2{
            gMonth = 'February';
        }
        when 3{
            gMonth = 'March';
        }
        when 4{
            gMonth = 'April';
        }
        when 5{
            gMonth = 'May';
        }
        when 6{
            gMonth = 'June';
        }
        when 7{
            gMonth = 'July';
        }
        when 8{
            gMonth = 'August';
        }
        when 9{
            gMonth = 'September';
        }
        when 10{
            gMonth = 'October';
        }
        when 11{
            gMonth = 'Nowember';
        }
        when else{
            gMonth = 'January';
        }
    }
    system.debug(gMonth);
    return gMonth;




}
    
}