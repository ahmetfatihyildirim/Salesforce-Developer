@isTest
public class calculateTest {
    
    @isTest
    public static void sum1(){
        Test.startTest();
        calculate calc=new calculate();
        Integer result=calc.sum(10,20);
        system.assertEquals(30, result);
        Test.stopTest();
    }
     @isTest
    public static void sum2(){
        calculate calc=new calculate();
        Integer result=calc.sum(-10,-20);
        system.assertEquals(-30, result);
    }
     @isTest
    public static void sum3(){
        calculate calc=new calculate();
        Integer result=calc.sum(0,-20);
        system.assertEquals(-20, result);
    }
    @isTest
    public static void sub1(){
        calculate calc=new calculate();
        Integer result=calc.sub(5,3);
        System.assertEquals(2, result);
    }
    
    @isTest
    public static void sub2(){
        calculate calc=new calculate();
        Integer result=calc.sub(-10,-20);
        System.assertEquals(10, result);
    }
    
    @isTest
    public static void sub3(){
        calculate calc=new calculate();
        Integer result=calc.sub(0,-20);
        System.assertEquals(20, result);
    }
    
    @isTest
    public static void mul1(){
        calculate calc=new calculate();
        Integer result=calc.mul(-10,-20);
        System.assertEquals(200, result);
    }
    
    
    @isTest
    public static void mul2(){
        calculate calc=new calculate();
        Integer result=calc.mul(10,-20);
        System.assertEquals(-200, result);
    }
    
    @isTest
    public static void div1(){
        calculate calc=new calculate();
        Decimal result=calc.div(50,5);
        System.assertEquals(10, result);
    }
    
    @isTest
    public static void div2(){
        calculate calc=new calculate();
        Decimal result=calc.div(5,2);
        System.assertEquals(2.5, result);
    }
    
    @isTest
    public static void div3(){
        calculate calc=new calculate();
        Decimal result=calc.div(5,0);
        System.assertEquals(null, result);
    }

}