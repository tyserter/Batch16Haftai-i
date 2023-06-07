public class StudentMarksheet {
    String firstName;
    String lastName ;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    public static String schoolName;

    public StudentMarksheet() {
        schoolName = 'Salesforce Public School';
    }
    
    public void setFirstName(String name) {
        this.firstName = name;
    }
    public String getFirstName() {
        return firstName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getLastName() {
        return lastName;
    }
    
    
    public void setMarks(Integer math, Integer eng, Integer chem) {
        mathematics = math;
        english = eng;
        chemistry = chem;
    }
    
    
    public void showMarksheet() {
        System.debug('School name is '+schoolName+ 'and student full name is '+firstName+' '+lastName+' mark of Mathematics: '+mathematics+' mark of Chemistry: '+chemistry+' '+ 'and mark of English: '+english   );
        
        Integer sum = mathematics + english + chemistry;
        if (sum >= 120) {
            System.debug('You are passed');
        } else {
            System.debug('You need to study more');
        }
    }
}

