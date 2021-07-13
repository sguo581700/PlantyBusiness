public class SupplierTriggerHelper {
	public static void updateShippingMethod(List<Supplier__c> suppliers){
        for(Supplier__c s : suppliers){
            s.ShippingMethod__c = 'Ground';        
        }
    }
}