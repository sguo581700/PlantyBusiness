trigger SupplierTrigger on Supplier__c (before insert, before update, 
                                  before delete, after insert, 
                                  after update, after delete, 
                                  after undelete) {
        	switch on Trigger.operationType{
            when AFTER_DELETE{}
            when AFTER_UPDATE{}
            when AFTER_INSERT{}
            when AFTER_UNDELETE{}
            when BEFORE_DELETE{}
			when BEFORE_INSERT{SupplierTriggerHelper.updateShippingMethod(Trigger.new);}
            when BEFORE_UPDATE{}
        }

}