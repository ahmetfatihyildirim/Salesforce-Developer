import { LightningElement } from 'lwc';
export default class ParentComponent extends LightningElement {
// file name : parentComponent    // camel Case
// Javascript Class : ParentComponent   // Capital Case
// kebap Case parent-component
message='';
parentInput='default';

clickHandle(event){
  this.message=this.parentInput;
}
onchangeHandler(event){
    this.parentInput=event.target.value;
}
}