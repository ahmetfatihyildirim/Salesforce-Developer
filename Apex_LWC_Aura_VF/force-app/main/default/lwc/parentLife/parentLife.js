import { LightningElement } from 'lwc';
export default class ParentLife extends LightningElement {
  dataforChild;
  showChild=false;
  toggleChangeHandler(){
    
    this.showChild=!this.showChild;
  }
  constructor(){
    super();
   console.log('Parent  constructor is working.....');
  }
  connectedCallback(){
    console.log('Parent  connectedCallback is working');
  }
  renderedCallback(){
    console.log('Parent  renderedCallback is working....');
  }
  disconnectedCallback(){
    console.log('Parent  disconnectedCallback is working....');
  }
  errorCallback(err,Stack){
    console.log('Parent  errorCallback is working .....');
    console.log(err);
    console.log(Stack);
  }
  onvalueChangeHandler(event){
  this.dataforChild = event.target.value;
  
  this.template.querySelector('c-component-life').retrieveAccounts(this.dataforChild);
  }
 
}