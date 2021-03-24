public class ContactProcessor 
{
    //Pass Account Id From after Insert contact trigger
    public static void countContacts(List<Id> accountIds)
    {
        List<Account> lst_UpdateAccounts = new List<Account>();
        
        for(Account objAccount :[Select Id,Number_of_Contacts__c,(Select Id from Contacts) From Account where Id IN:accountIds])
        {
            if(objAccount.Number_of_Contacts__c != objAccount.Contacts.size() && objAccount.Contacts.size()>0)
            { 
                objAccount.Number_of_Contacts__c= objAccount.Contacts.size();
                lst_UpdateAccounts.add(objAccount);
            }
        }
        if(!lst_UpdateAccounts.isEmpty()) update lst_UpdateAccounts;
    }
    
}