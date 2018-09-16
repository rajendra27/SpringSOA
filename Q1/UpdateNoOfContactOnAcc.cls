public class UpdateNoOfContactOnAcc {
    public void updateAccount(){
        List<Account> accList2Update = new List<Account>();
        for(Account acc: [Select Id, (Select Id from Contacts) from Account]){
            accList2Update.add(new Account(Id = acc.Id, Number_of_Contacts__c = acc.Contacts.size()));
        }
        if(accList2Update.size() > 0){
            update accList2Update;
        }
    }
    
}