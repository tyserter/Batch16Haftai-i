public class MarksObtainInMaths {
    Map<String, Integer> marksObtainInMaths;

    public MarksObtainInMaths() {
        marksObtainInMaths = new Map<String, Integer>{
            '0111CE112' => 40,
            '0111CE102' => 19,
            '0111CE100' => 33,
            '0111CE098' => 40
        };
    }
    public void addMapping(String rollNo, Integer marks) {
        marksObtainInMaths.put(rollNo, marks);
    }
    public void printRollNo() {
        System.debug('Roll Number:');
        for(String rollNo : marksObtainInMaths.keySet()) {
            System.debug(rollNo);
        }
    }
    public void printMarks() {
        System.debug('Marks Obtained:');
        for(Integer marks : marksObtainInMaths.values()) {
            System.debug(marks);
        }
    }

    public Set<String> getUniqueRollNo() {
        Set<String> uniqueRollNumberSet = new Set<String>();
        for(String rollNo : marksObtainInMaths.keySet()) {
            uniqueRollNumberSet.add(rollNo);
        }
        return uniqueRollNumberSet;
    }
    public List<Integer> getMarksList() {
        List<Integer> marksObtainList = new List<Integer>();
        for(String rollNo : marksObtainInMaths.keySet()) {
            Integer marks = marksObtainInMaths.get(rollNo);
            marksObtainList.add(marks);
        }
        return marksObtainList;
    }
}