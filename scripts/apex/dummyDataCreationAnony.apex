DummyDataCreation.topTenOpp();
DummyDataCreation.CreateOpp('001B000001UWrAzIAL', 4);
DummyDataCreation.CreateOpp('001B000001UWrAzIAL', 0);
DummyDataCreation.addContact();
DummyDataCreation.deleteOpp();
DummyDataCreation.createAcc(2);
DummyDataCreation.createCon(2, DummyDataCreation.createAcc(2));
DummyDataCreation.createCase(DummyDataCreation.createCon(2, DummyDataCreation.createAcc(2)));