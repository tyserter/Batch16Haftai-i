@istest
public class RankHandlerTest {
   @istest
    private static void rankPrizeTest() {
    RankHandler r = new RankHandler();
    string p1 = r.rankPrize(1);
    assert.areEqual('Gold', p1);
    string p2 = r.rankPrize(2);
    Assert.areEqual('Silver', p2);
    string p3 = r.rankPrize(3);
    Assert.areEqual('Bronze',p3);
    string p4 = r.rankPrize(4);
    Assert.areEqual('Top 10', p4);
    string p5 = r.rankPrize(12);
    Assert.areEqual('Participation certificate', p5);    
   }
   @isTest
   static void rankPrizeSwitchTest(){
    RankHandler r = new RankHandler();
    string p1 = r.rankPrizeSwitch(1);
    assert.areEqual('Gold', p1);
    string p2 = r.rankPrizeSwitch(2);
    Assert.areEqual('Silver', p2);
    string p3 = r.rankPrizeSwitch(3);
    Assert.areEqual('Bronze',p3);
    string p4 = r.rankPrizeSwitch(4);
    Assert.areEqual('Top 10', p4);
    string p5 = r.rankPrizeSwitch(12);
    Assert.areEqual('thank you for participating', p5);


    
   }
   
}
