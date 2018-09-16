public class AccountLightningController {
	@AuraEnabled
    public static List<Account> getAccount(){
        return [Select Id, Name, Number_of_Contacts__c, CreatedDate from Account Order By CreatedDate Desc Limit 10];
    }
}