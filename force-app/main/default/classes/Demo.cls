public class Demo {
   /* public List<AggregateResult> query(){
          List<AggregateResult> result = [select count(Name) from Account];
        return result;
    }
    public List<Account> queryOverLoad(String name){
          List<Account> result = [select Name from Account where Name=:name];
        return result;
    }
    public List<Contact> queryc2p(){
        List<Contact>conList = [select Id, Account.name from Contact];
        return conList;
    }
    public List<Account>queryp2c(){
        List<Account>accList = [select Id, (select LastName from Contacts) from Account];
        return accList;
    }*/
    //how to access the child field values;
    /*for(Account a:accList){
    	for(Contact c: a.Contacts){
        	system.debug(a.Id + ' ' + c.LastName);
    	}
	}*/
    
    //another or better way:
    /*
* for(Account a : [select Id, (select LastName from Contacts) from Account]){
	for(Contact c : [select Id, Account.Name from Contact]){
		system.debug(a.Id + ' ' + c.LastName);
	}
  }
     * 
     */
    //SOSL
    public Plant__c insertPlant(String plantName){
        Plant__c p = new Plant__c();
        p.Name = plantName;
        insert p;
        return p;
    }
    public Supplier__c insertSupplier(String supplierName){
        Supplier__c s = new Supplier__c();
        s.Name = supplierName;
        insert s;
        return s;
    }
    
    public Growing_Field__c insertGF(String GFName){
        Growing_Field__c gf = new Growing_Field__c();
        gf.Name = GFName;
        insert gf;
        return gf;
    }
  
   /* public List<List<SObject>> searchQuery(){
        List<List<SObject>> searchList = [find 'Joe*'in all fields returning Account(Id, Name), Lead];
        return searchList;
    }*/
}