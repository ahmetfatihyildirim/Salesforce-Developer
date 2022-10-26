public class customListController {
// properties  String opportunityID= System.currentPageReference().getParameters().get('Id');
public List<Opportunity> multiOp{get;set;}
public String searchTerms{get;set;}
public String accountID {get;set;}
public String message{get;set;}

            // methods
            public customListController(ApexPages.StandardController controller) {
            accountID = System.currentPageReference().getParameters().get('Id');
            message = System.currentPageReference().getParameters().get('message');
            
                    multiOp=[SELECT id, Name, Amount,Accountid, StageName, CloseDate FROM Opportunity WHERE Accountid=:accountID LIMIT 20];
            }
            
            
            public void searchHandler(){
            
                    String bindStr = '%' + searchTerms + '%';
                    multiOp=[SELECT id, Name, Amount,Accountid, StageName,CloseDate 
                    FROM Opportunity
                    WHERE Name LIKE :bindStr AND Accountid=:accountID];
            }
}