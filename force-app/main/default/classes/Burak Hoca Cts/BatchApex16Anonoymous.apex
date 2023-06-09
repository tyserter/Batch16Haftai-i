BatchApex16 ba16 = new BatchApex16();
Database.executeBatch(ba16, 11);
//version 1
Queuable16first q16 = new Queuable16first();
system.enqueueJob(16);

//version 2
system.enqueueJob(new Queuable16first());

List<Account> accList = [select id, name from account];
for (account acc : accList) {
    acc.name = acc.name.remove('--');
}
update accList;

BatchClassMail bcm = new BatchClassMail();
Database.executeBatch(bcm, 4 );