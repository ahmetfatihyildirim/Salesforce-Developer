import { LightningElement,wire } from 'lwc';
// import Apex Class method...
// import apex method from 'apex> AccountUIHandler.retrieve'
import retrieve from '@salesforce/apex/AccountUIHandler.retrieve';

export default class AccountListComponent extends LightningElement {

/*@track multiAccount;
@wire(retrieve) accountList({error,data}){
    if(data){
        this.multiAccount=data;
    } else if(error) {
      this.multiAccount=undefined;
    }
}*/

//yukarıdaki gibi data olup olmadığını burada sorgulama yapılabilirken bir diğer şekli de.html dosyasında gösterilebilir.


search='';
@wire(retrieve, {searchterm:'$search'}) accounts;
inputChangeHandler(event){
 this.search=event.target.value;
}
/*@wire (apexMethodName, { apexMethodParams })
propertyOrFunction;
Yukarıdaki Syntax in açıklaması:
The component’s JavaScript prefaces the value of the searchKey parameter with $ to indicate that it’s dynamic and reactive.
It references a property of the component instance. If its value changes, the template rerenders.
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.apex_wire_method
*/

}