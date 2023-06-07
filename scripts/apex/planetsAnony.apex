// Create an object using the default constructor
Planets earth1 = new Planets();
earth1.details();

// Create an object using the second constructor
Planets earth2 = new Planets('Earth');
earth2.details();

// Create an object using the third constructor
Planets mars = new Planets('Mars', 4, 2);
mars.details();

// Create an object for your favorite non-earth planet
Planets favPlanet = new Planets('Venus', 2, 0);
favPlanet.details();
