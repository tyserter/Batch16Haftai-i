students student1 = new Students();
student1.setFirstName('Mike');
student1.setLastName('Rass');
student1.setMarks(95);
student1.setClassYear(2010);
student1.setMajor('law');
string sonuc = student1.generateReport();
system.debug('Final notu '+student1.getfirstName()+ ' ' + sonuc);

