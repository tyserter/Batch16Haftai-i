public class ListExtra_Assignment {
    public static List<String> schoolsList(String medium) {
        List<String> allSchools = new List<String> {'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};
        List<String> mediumSchools = new List<String>();
        for (String school : allSchools) {
            if (school.contains(medium)) {
                mediumSchools.add(school);
            }
        }
        return mediumSchools;
    }
}

