public class GrowingFieldTriggerHelper {
 public static void updateSoilType(List<Growing_Field__c> fields){
        for(Growing_Field__c gf : fields){
            gf.SoilType__c = 'user defined';
        }
    }
}