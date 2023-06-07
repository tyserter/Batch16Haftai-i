List<Lead> newlead = new List<Lead>();
for (Integer i = 1; i <= 5; i++) {
    Lead nl = new Lead();
    nl.LastName = 'new lead ' + i;
    nl.Company = 'test ' + i;
    newlead.add(nl);
    
}
insert newlead;
System.debug(newlead);