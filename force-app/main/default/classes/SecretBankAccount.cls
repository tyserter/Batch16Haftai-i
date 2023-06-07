public class SecretBankAccount {
    string accountNumber;
    string accountName;
    decimal BalanceAmount;
    public void createAccount(string accountNumber, string accountName, decimal BalanceAmount){
        this.accountNumber = accountNumber;
        this.accountName = accountName;
        this.BalanceAmount = BalanceAmount;
    }
    public void depositAmount(decimal amount){
        this.BalanceAmount+=amount;
        system.debug('Amount deposit successfully!');
        system.debug('Amount deposit: '+amount);
        
    }
    public void withdrawAmount(decimal amount){
        if (amount > balanceAmount) {
            system.debug('Sorry, Sufficient Balance not Available!');
            system.debug('Current balance '+balanceAmount);
        }else {
            BalanceAmount-=amount;
            System.debug('Amount Withdrawn Successfully!');
            System.debug('Amount Withdrawn: '+amount);
            System.debug('Current Balance: '+BalanceAmount);
        }
    }
    public void accountDetails(){
        System.debug('Account number '+accountNumber);
        System.debug('Account name '+accountName);
        System.debug('Balance '+BalanceAmount);
    }
}
