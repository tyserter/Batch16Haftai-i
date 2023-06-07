public class Collections{
    public static string listAssigments(integer month){
        List<string> lstMonth = new List<string>{'January', 'February', 'March', 'April', 'May', 'June', 
        'July', 'August', 'September', 'October', 'November', 'December'};
            string output_month= '';

            if (month > 0 && month< lstMonth.size()) {
                output_month = lstMonth[month-1];
                
            } else {
                output_month = 'Not a valid month ';
                
            }
            system.debug(output_month);
            return output_month;
    }
}
    