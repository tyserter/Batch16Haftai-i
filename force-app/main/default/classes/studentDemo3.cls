//

public class StudentDemo3 {
    String admissionNo;
    String studentName;
    Map<String, Decimal> subjectAndMarks;
    
    public StudentDemo3(String admissionNo, String studentName, Map<String, Decimal> subjectAndMarks) {
        this.admissionNo = admissionNo;
        this.studentName = studentName;
        this.subjectAndMarks = subjectAndMarks;
    }
    
    public String getAdmissionNo() {
        return admissionNo;
    }
    
    public String getStudentName() {
        return studentName;
    }
    
    public Set<String> getSubjects() {
        return subjectAndMarks.keySet();
    }
    
    public List<Decimal> getMarks() {
        return new List<Decimal>(subjectAndMarks.values());
    }
    
    public Decimal getMarks(String sub) {
        if (subjectAndMarks.containsKey(sub)) {
            return subjectAndMarks.get(sub);
        } else {
            System.debug(studentName + ' did not study ' + sub);
            return -1;
        }
    }
    
    public Decimal getTotalMarks() {
        Decimal total = 0;
        for (Decimal mark : subjectAndMarks.values()) {
            total += mark;
        }
        return total;
    }
    
    public Decimal getAverageMarks() {
        Decimal total = getTotalMarks();
        return total / subjectAndMarks.size();
    }
    
    public Map<String, Decimal> getSubjectAndMarksAboveAverage() {
        Decimal average = getAverageMarks();
        Map<String, Decimal> aboveAverage = new Map<String, Decimal>();
        for (String sub : subjectAndMarks.keySet()) {
            Decimal mark = subjectAndMarks.get(sub);
            if (mark > average) {
                aboveAverage.put(sub, mark);
            }
        }
        return aboveAverage;
    }
}
