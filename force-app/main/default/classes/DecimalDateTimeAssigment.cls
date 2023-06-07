public class DecimalDateTimeAssigment {
    public void DecimalAssigmentMethod() {

        decimal d1 = 30.45658525;
        decimal ds = d1.setScale(2);
        system.debug(ds);

        string str1 = d1.toPlainString();
        system.debug(str1);

        decimal d2 = Decimal.valueOf(str1);
        system.debug(d2);

    }

    public void DateTimeAssigment(){
        date myBirthday = date.newInstance(1972, 11, 18);
        system.debug(myBirthday);

        time newDt = time.newInstance(10, 20, 40, 200);
        system.debug(newDt);
    }
}