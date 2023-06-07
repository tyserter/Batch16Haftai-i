/*Create a class called "Circle"
data members are as
radius (decimal) and color (String).
we should be able to create new instance of Circle class as follows
new Circle();
new Circle(4.5);
new Circle(5.5, ‘black’);
Include getter and setter methods for all properties.
Implement a method called "calculateArea" that returns the area of the circle,
Another method called "calculateCircumference" that returns the circumference of the circle.
[hint: you can use math.pito get value of PI]
Test by creating minimum 3 instance of Circle class using all 3 constructors and setter methods.*/


public class Circle {
    Decimal radius;
    String color;
    
    public Circle() {
        radius = 0;
        color = '';
    }
    
    public Circle(Decimal r) {
        radius = r;
        color = '';
    }
    
    public Circle(Decimal r, String c) {
        radius = r;
        color = c;
    }
    
    public void setRadius(Decimal r) {
        radius = r;
    }
    
    public Decimal getRadius() {
        return radius;
    }
    
    public void setColor(String c) {
        color = c;
    }
    
    public String getColor() {
        return color;
    }
    
    public Decimal calculateArea() {
        return Math.PI * radius * radius;
    }
    
    public Decimal calculateCircumference() {
        return 2 * Math.PI * radius;
    }
}
