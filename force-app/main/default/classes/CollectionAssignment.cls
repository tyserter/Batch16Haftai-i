public class CollectionAssignment {
    Set<String> countriesSet = new Set<String>{'India', 'USA', 'Russia', 'Germany', 'Singapore', 'Japan'};

    public void printLowercase() {
        List<String> countriesList = new List<String>();
        for (String country : countriesSet) {
            countriesList.add(country.toLowerCase());
        }
        System.debug(countriesList);
    }

    public void printUppercase() {
        List<String> countriesList = new List<String>();
        for (String country : countriesSet) {
            countriesList.add(country.toUpperCase());
        }
        System.debug(countriesList);
    }
}
