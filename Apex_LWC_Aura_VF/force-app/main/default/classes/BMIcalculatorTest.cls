@isTest
public class BMIcalculatorTest {
    
    @isTest
    
    public static void bmiTest1(){
        Decimal result=BMIcalculator.calculateMetric('ali', 'veli', 1.85, 75);
        system.assertEquals(21.91, result);
        
    }

}