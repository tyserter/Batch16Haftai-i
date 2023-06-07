Circle c1 = new Circle();
c1.setRadius(3.5);
c1.setColor('blue');
System.debug('Circle 1: radius=' + c1.getRadius() + ', color=' + c1.getColor() + ', area=' + c1.calculateArea() + ', circumference=' + c1.calculateCircumference());

Circle c2 = new Circle(4.5);
c2.setColor('green');
System.debug('Circle 2: radius=' + c2.getRadius() + ', color=' + c2.getColor() + ', area=' + c2.calculateArea() + ', circumference=' + c2.calculateCircumference());

Circle c3 = new Circle(5.5, 'black');
System.debug('Circle 3: radius=' + c3.getRadius() + ', color=' + c3.getColor() + ', area=' + c3.calculateArea() + ', circumference=' + c3.calculateCircumference());
