public class ScheduledCalculateTest implements Schedulable {
    
    public void execute(SchedulableContext SC){
        calculateTest.sum1();
    }
}