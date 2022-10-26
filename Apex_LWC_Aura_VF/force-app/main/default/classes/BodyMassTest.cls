@isTest
public class BodyMassTest {
    
    @isTest
    public static void test1(){
        String result=BodyMass.calculateBMI('ali','veli');
        system.assertEquals('ALI VELI', result);
    }
     @isTest
    public static void test2(){
        Decimal result=BodyMass.calculateBMI(65,1.75);
        system.assertEquals(21.22, result);
    }
    

}