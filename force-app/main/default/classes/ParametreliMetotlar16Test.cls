@istest
public class ParametreliMetotlar16Test {
    @istest
    private static void printWelcomeTest() {
        ParametreliMetotlar16 pm = new ParametreliMetotlar16();
        pm.printWelcome();
    }
    @istest
    private static void welcomePersonTest() {
        ParametreliMetotlar16 pm = new ParametreliMetotlar16();
        pm.welcomePerson('John');
    }
    @istest
    private static void toplamaTest() {
        ParametreliMetotlar16 pm = new ParametreliMetotlar16();
        integer tplm = pm.toplama(11, 22);
        assert.areEqual(33, tplm);
        // assert.isNotNull(tplm);
        // assert.isTrue(tplm == 33);
    }
    @istest
    private static void artikYilTest() {
        ParametreliMetotlar16 pm = new ParametreliMetotlar16();
        date dt = date.newInstance(2023, 5, 24);
        boolean result = pm.artikYil(dt);
        assert.isFalse(result);
    }
    @istest
    private static void uzunlukTest() {
        ParametreliMetotlar16 pm = new ParametreliMetotlar16();
        integer uznlk = pm.uzunluk('merhaba');
        assert.areEqual(7, uznlk);
    }
}