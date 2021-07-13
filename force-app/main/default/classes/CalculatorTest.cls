@isTest // this lets apex know that this will be a test class
private class CalculatorTest {
    //this is an annotation, adds meta data/functionality to whatever it is place over
    //positive testing if the behavior is expected, if an error occurs during the test, then it fails.
    //negative testing ensures that functionality can gracefully handle invalid input/behavior
    //for normal test, the classes and test data will not persists across all test methods,
    //so we can use the test Setup method to initialize data that can be used throughout the whole test class
    //The test setup method will be executed before each test. 
     static Calculator cal=new Calculator();
    @TestSetup
    static void MakeTestData(){
    	    
    }
    
    @isTest
    public static void additionSuccess(){ 
        System.assertEquals(4, cal.addition(2, 2));
    }
}