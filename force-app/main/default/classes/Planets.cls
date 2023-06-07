public class Planets {
    public String name;
    private Integer planetNumber;
    private Integer numMoons;

    public Planets() {
        name = 'Earth';
        planetNumber = 3;
        numMoons = 1;
    }

    public Planets(String planetName) {
        name = planetName;
        planetNumber = null;
        numMoons = null;
    }

    public Planets(String planetName, Integer planetNumber, Integer numMoons) {
        name = planetName;
        this.planetNumber = planetNumber;
        this.numMoons = numMoons;
    }

    public void details() {
        System.debug('Planet name: ' + name);
        System.debug('Planet number: ' + planetNumber);
        System.debug('Number of moons: ' + numMoons);
    }

    public String getName() {
        return name;
    }
}
