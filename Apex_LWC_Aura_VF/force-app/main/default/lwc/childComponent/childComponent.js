import { LightningElement,api } from 'lwc';
export default class ChildComponent extends LightningElement {
@api parentMessage;
    connectedCallback(){
      console.log('ConnectedCallback is working....');
      console.log(this.parentMessage);
    }
}