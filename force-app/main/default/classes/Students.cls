public class Students {
    private string firstName;
    private string lastName;
    private integer classYear;
    private integer marks;
    private string major;

    public void setFirstName(string firstName){
        this.firstName = firstName;
    }
    public string getfirstName(){
        return this.firstName;
    }
    public void setLastName(string lastName){
        this.lastName = lastName;
        
    }
    public string getlastName(){
        return this.lastName;
    }
    public void setMarks(integer marks){
        if (marks>0 && marks<=100) {
            this.marks = marks;
        }else {
            this.marks = -1;
            system.debug('please give proper marks this no joke.');
        }
    }
    public void setClassYear(integer classYear){
        integer yil = date.today().year();
        if (classYear <= yil && classYear>(yil-100)) {
            this.classYear=classYear;
            
        }
        else {
            this.classYear = 0;
            system.debug('No such class year exist for us ');
        }
    }
    public void setMajor(string major){
        if (major.length()>2) {
            this.major = major;
        }else {
            this.major = 'NA';
            system.debug('there is no such major or stream in our uni ');
            
        }


    }
    public String generateReport(){
        system.debug('Report Generated for ' + this.firstName +' ' + this.lastName +' of '+this.classYear+''+this.major);
        string grade;
        if (this.marks>=90 ) {
            grade='A';
            
        }else if (this.marks>=80) {
            grade='B';
            
        }else if (this.marks>=70) {
            grade='C';
            
        }else if (this.marks>=60) {
            grade='D';
            
        }else if (this.marks<60 && this.marks>=0) {
            grade='F';
        }else {
            grade='X';
        }
        return grade;

        } 

    }


