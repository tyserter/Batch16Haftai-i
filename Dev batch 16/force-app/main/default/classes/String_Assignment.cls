public class String_Assignment {
    public void Assignment1() {
        String LocalString = 'Thanks for the session on the string';
        Integer lengthOfLs = LocalString.length();
        system.debug(lengthOfLs);

        String UpperCaseLs = LocalString.toUpperCase();
        system.debug(UpperCaseLs);

        Boolean check1 = LocalString.contains('session');
        system.debug('Localstring contains session ==> ' + check1);

        Boolean check2 = LocalString.contains('sessions');
        system.debug('Localstring contains sessions ==> ' +check2);

        Boolean check3 = LocalString.contains('SESSION');
        system.debug('Localstring contains SESSION ==> ' +check2);

        integer noOfIndexFor =LocalString.indexOf('for');
        system.debug(noOfIndexFor);

        integer noOfIndexan =LocalString.indexOf('an');
        system.debug(noOfIndexan);

        string removeThe = LocalString.remove('the');
        system.debug(removeThe);

    }
}