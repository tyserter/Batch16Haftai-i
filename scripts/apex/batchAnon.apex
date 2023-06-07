AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab, 30);

CasesBatch cb = new CasesBatch();
Database.executebatch(cb, 10);

DeleteOppBatch db = new DeleteOppBatch();
Database.executeBatch(db, 2);
