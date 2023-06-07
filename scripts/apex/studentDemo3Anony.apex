Map<String, Decimal> subjectAndMarks1 = new Map<String, Decimal>{
    'math' => 75.5,
    'physics' => 56.0,
    'english' => 80.5,
    'chemistry' => 70.0,
    'computer' => 58.5
};
StudentDemo3 student1 = new StudentDemo3('1001', 'Peter Parker', subjectAndMarks1);
System.debug('Admission Code 1: ' + student1.getAdmissionNo());
System.debug('Student Name 1: ' + student1.getStudentName());
System.debug('Subjects 1: ' + student1.getSubjects());
System.debug('Marks 1: ' + student1.getMarks());
System.debug('Marks of english: ' + student1.getMarks('english'));
System.debug('Marks of physics: ' + student1.getMarks('physics'));
System.debug('Peter Parker did not study Hindi');
System.debug('Marks of Hindi: ' + student1.getMarks('Hindi'));
System.debug('Total Marks 1: ' + student1.getTotalMarks().setScale(1));
System.debug('Average Mark 1: ' + student1.getAverageMarks().setScale(1));
System.debug('Above average subject and marks: ' + student1.getSubjectAndMarksAboveAverage());

Map<String, Decimal> subjectAndMarks2 = new Map<String, Decimal>{
    
};
StudentDemo student2 = new StudentDemo('1005', 'Cleopatra', subjectAndMarks2);
