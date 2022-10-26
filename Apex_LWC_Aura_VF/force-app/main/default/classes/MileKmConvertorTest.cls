@isTest
public class MileKmConvertorTest {
    
    
    @isTest
    public static void kmtest1(){
        decimal res1=MileKmConvertor.convertmile(1);
        System.assertEquals(1.6, res1);
    }
    @isTest
    public static void kmtest2(){
        decimal res2=MileKmConvertor.convertmile(100.0);
        System.assertEquals(160.0, res2);
    }
    @isTest
    public static void miletest1(){
        decimal res3=MileKmConvertor.convertkm(1);
        System.assertEquals(0.625, res3);
    }
    @isTest
    public static void miletest2(){
        decimal res4=MileKmConvertor.convertkm(100);
        System.assertEquals(62.5, res4);
    }
    

}