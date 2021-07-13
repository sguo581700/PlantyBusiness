@isTest
public class TestClass {
   
	@isTest
    static void testInsertPlant(){
        String pName = 'testName';
        Demo d = new Demo();
        Plant__c p=d.insertPlant(pName);
        System.assertEquals(p.name,'testName');
        System.assertNotEquals(null, p);
    }
    @isTest
    static void testInsertSupplier(){
       String sName = 'testName';
       Demo d = new Demo();
       Supplier__c s = d.insertSupplier(sName);
       System.assertEquals(s.name,'testName');
       System.assertNotEquals(null, s);
    }
    
    @isTest
    static void testInsertGF(){
        String GFName = 'testName';
        Demo d = new Demo();
        Growing_Field__c gf = d.insertGF(GFName);
        System.assertEquals(gf.name,'testName');
        System.assertNotEquals(null, gf);
    }
    @isTest
    static void testDemo(){
        Demo d = new Demo();
        System.assertNotEquals(null, d);
    }
    
}