public class AccountRecord_Controller 
{
    @auraEnabled
    public static List<Account> getAccounts()
    {
        return [Select Id,Name,BillingState,BillingCity,Phone FROM Account Order By lastModifiedDate Desc limit 10];
    }
}