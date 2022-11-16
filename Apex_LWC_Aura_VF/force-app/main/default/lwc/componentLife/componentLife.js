import { LightningElement ,api,track} from 'lwc';
import retrieve from '@salesforce/apex/AccountUIHandler.retrieve';
const columns = [
  {
    label: 'Name', fieldName: 'AccountURL', type: 'url',
    typeAttributes: {
        label: {
            fieldName: 'Name'
        }
    }
},
  { label: 'Phone', fieldName: 'Phone', type: 'phone' },
  { label: 'Industry', fieldName: 'Industry',type:'text' },
  
  
];
export default class ComponentLife extends LightningElement {
  columns=columns;
  @api title;
  @track accountList=[];
  @api retrieveAccounts(search){
    
    let tempAcc;
    // imperative apex call.
    retrieve({searchterm:search})
    .then(res=>{
     
      
      this.accountList=res.map((item) =>{
         
          tempAcc={
            ...item,
            AccountURL:'/lightning/r/Account/' +item.Id +'/view',
          }
 return tempAcc;
        });
      
    })
    .catch(err=>{
      console.log(err);
    });
  }
  get getaccountList(){
    return accountList;
  }
  changeHandler(event){
    console.log('handler chage is working....');
    
  }
  constructor(){
    super();
   console.log('Child constructor is working.....');
  }
  connectedCallback(){
    console.log('Child connectedCallback is working');
    
  }
  renderedCallback(){
    console.log('Child renderedCallback is working....');
  }
  disconnectedCallback(){
    console.log('Child disconnectedCallback is working....');
  }
  errorCallback(err,Stack){
    console.log('Child errorCallback is working .....');
    console.log(err);
    console.log(Stack);
  }
}