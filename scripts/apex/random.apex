Integer[] numbers = new Integer[5];
Integer y;

for (Integer i = 0; i < 32; i++) {
    // Generate 5 random numbers between 1 and 70
    for (Integer j = 0; j < 5; j++) {
        numbers[j] = (Integer)Math.ceil(Math.random() * 70);
    }
    // Generate 1 random number between 1 and 25
    y = (Integer)Math.ceil(Math.random() * 25);
    // Output the generated numbers
    System.debug('Numbers: ' + String.join(numbers, ', ') + ', Y: ' + y);
}
