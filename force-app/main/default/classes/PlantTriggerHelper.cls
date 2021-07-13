public class PlantTriggerHelper {
    public static void insertPlantClimate(List<Plant__c> plants){
        for(Plant__c p : plants){
            p.Climate__c = 'Mild';
            p.Temperature__c=25;
        }
    }
}