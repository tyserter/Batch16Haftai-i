public class DatetimeMethodsDemo {
    public void CalculateAgeInMonths() {
        system.debug('we will calculate our age in months');
        Date todayDate = date.today();
        Date tumayBirthDate = date.newInstance(1972, 11, 18);

        integer tsAgeInMonths = tumayBirthDate.monthsBetween(todayDate);
        system.debug('Tumay age in months' + tsAgeInMonths);

    }

    public void calculateAgeIndays(){
        Date todayDate = date.today();
        Date tumayBirthDate = date.newInstance(1972, 11, 18);
        integer tsAgeIndays = tumayBirthDate.daysBetween(todayDate);
        system.debug('Tumay age in days' + tsAgeIndays);

    }

    public void printSubscriptionEndDate(){
        date startDate1 = date.today();
        date endDate1 = startDate1.addDays(1000);
        system.debug('Subscription ends on' + endDate1);

        date endDate2 = date.today();
        date startDate2 = endDate2.addDays(-1000);
        system.debug('Subs start date2 is' + startDate2);
        // get YEAR component
        integer startYear = startDate2.year();
        system.debug('start year of subscription was ' + startYear);
        integer startMonth = startDate2.month();
        system.debug('month year of subscription was ' + startMonth);
        
    }
    public void printOfferEndDatetime(){
        datetime offerStartDT = datetime.now();
        // print offer end datetime, offer ends 51 hours
        datetime offerEndDT = offerStartDT.AddHours(51);
        system.debug('offer end datetime is ' + offerEndDT);
    }
}