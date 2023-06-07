public class DummyDataCreation {
    //Q1
    public static void topTenOpp() {
        List<Opportunity> Opp = [Select id, name, Description, amount from Opportunity where amount != null order by Amount desc limit 10];
        System.debug('Top 10 Opp: '+Opp);
        for (opportunity eachOpp : Opp) {
            eachOpp.Description = 'This is one of the top 10 opportunities. Please work on this properly.';
            System.debug('Updated description: '+eachOpp);
        }
        update opp;
    }

    //Q2
    public static List<Opportunity> CreateOpp(id accID, integer n){
        List<Opportunity> oppList = new List<Opportunity>();
        if (n<=0) {
            System.debug('Please tell us how many opportunities needs to be created');
        }else {
            account acc = [select id, name, annualRevenue from account where annualRevenue != null and id = :accID];
        
        for (Integer i = 1; i <= n; i++) {
            Opportunity opp = new Opportunity();
            opp.CloseDate = date.today().addYears(3);
            opp.StageName = 'Prospecting';
            opp.Amount = acc.annualRevenue/n;
            opp.Name = acc.name;
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        insert oppList;
    } 
    return oppList;
    }
    
    //Q3
    public static void addContact (){
        list<account> noContact = [select id , name from account where id NOT IN (select accountid from contact)];
        list <contact> contactUpdate = new list <contact>();
        for (account acc : noContact) {
            contact c = new contact ();
            c.AccountId = acc.Id;
            c.LastName = acc.Name;
            contactUpdate.add(c);

            
        }
        insert noContact;
    }
    //Q4
    public static void deleteOpp() {
        List<Opportunity> oppList = [select id, name, stageName, amount from opportunity where stageName = 'Closed Lost' and amount <20000];
        delete oppList;
    }
    //Q5
    public static List<Account> createAcc(integer n) {
        List<Account> accounts = new List<Account>();

        for (Integer i = 1; i <= n; i++) {
            Account acc = new Account();
            acc.Name = 'Account '+i;
            acc.Rating = 'Hot ';
            acc.Phone = '989978676';
            acc.ShippingState = 'Shipping ';
            acc.BillingState = 'Billing';
            accounts.add(acc);
        }
        insert accounts;
        return accounts;
    }
    //Q6
    public static list<contact> createCon(integer n, List<Account> accounts) {
        List<Contact> contactA = new List<Contact>();

        for (Account acc : accounts) {
            for (Integer i = 1; i <= n; i++) {
                contact ContactB =new contact();
                ContactB.FirstName = 'Contact ' +i;
                ContactB.LastName = 'ContactLastName '+i;
                ContactB.AccountId = acc.id;
                ContactB.Phone = '87667676';
                ContactB.MailingStreet = 'Mailing St';
                
                contactA.add(ContactB);

            }
        }
        insert contactA;
        return contactA;
    }
    public static list<case> createCase(list<contact> contactA) {
        list<case> listOfCase = new list<case>();
        for (contact con : contactA) {
            case cas = new case();
            cas.ContactId = con.Id;
            cas.AccountId = con.AccountId;
            cas.Subject = 'Subject';
            cas.Status = 'new';
            cas.Origin = 'Web';
            listOfCase.add(cas);

        }
        insert listOfCase;
        return listOfCase;
    }
    


}
