public class BankAccount {
    //data members
        //OR
    //class variables
    public string accountNumber;
    private string accountHolderName;
    decimal balance;
    string bankName;

    public void printDetails(){
        system.debug('accountNumber : ' + accountNumber);
        system.debug('accountHolderName : ' + accountHolderName);
        system.debug('balance : ' + balance);
        system.debug('bankName : ' + bankName);
    }
    //rules of construct.
    //name of constructor -> className
    public BankAccount(){
        system.debug('constructor called');
        balance = 0;
    }

    public void setBalance(decimal bal){
        balance = bal;
    }

    public BankAccount(string accNumber, string accHolderName, decimal bal, string bName){
        system.debug('parameterized constructor called');
        accountNumber = accNumber;
        accountHolderName = accHolderName;
        balance = bal;
        bankName = bName;
        //we can call methods from here.
    }
}