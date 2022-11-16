import { LightningElement,track } from 'lwc';
export default class ParentEvent extends LightningElement {
 @track messageFromChild;
  handleChildMessage(event){
    console.log(event);
    this.messageFromChild=event.detail;
    console.log(this.messageFromChild);
  }
}