// Bir tane contact create edelim. ve yukaridaki accounta baglayalim..
Account acc2 = [select id from account where name = 'batch 16 dml' limit 1];
Contact con = new Contact();
con.LastName = 'Contact batch 16';
con.AccountId = acc2.id;
insert con;

// custom objectlerle insert yapma..
Salesforce_Project__c sp = new Salesforce_Project__c();
sp.Project_Name__c = 'Batch 16 project';
sp.Status__c = 'New';
insert sp;

Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Salesforce_Project__c = sp.id;
st.Subject__c = 'Deneme';
insert st;

//update
Account acc3 = [select id, name, Type, Industry from account where name = 'batch 16 dml' limit 1];
acc3.Name += ' update'; 
acc3.Type = 'Prospect';
acc3.Industry = 'Education';
update acc3;

// En yuksek Annual revenue si olan ilk 5 Accountu getirin ve bunlarin Description fieldine tarihi belirterek 'tarihi itibariyle bu account en yuksek yillik cirosu olan 5 accounttan biri..' cumlesini yazdiralim
List<Account> accList = [select id, name, AnnualRevenue, Description from Account where AnnualRevenue != null order by AnnualRevenue desc limit 5];
for(account acc : accList){
    acc.Description = date.today() + ' tarihi itibariyle bu account en yuksek yillik cirosu olan 5 accounttan biri..';
}
update accList;

// 5 account create edin ve her accounta bagli 5 tane de opportunity create edelim..
List<Account> accList2 = new List<Account>();
for(integer i=1; i<=5; i++){
    account acc = new account();
    acc.Name = 'Dml Deneme ' + i;
    //insert acc; for dongusu icinde dml yapilmaz.. soql yapilmaz..
    accList2.add(acc);
}
insert accList2;

List<Opportunity> oppList = new List<Opportunity>();
for(account acc : accList2){
    for(integer i=1; i<=5; i++){
        Opportunity opp = new Opportunity();
        opp.Name = 'Dml Opportuniy Demo ' + i;
        opp.StageName = 'Prospecting';
        opp.CloseDate = date.today().addDays(60);
        opp.AccountId = acc.id;
        //insert opp; for dongusu icinde dml yapilmaz.. soql yapilmaz..
        oppList.add(opp);
    }
}
insert oppList;