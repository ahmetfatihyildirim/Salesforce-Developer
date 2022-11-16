import { LightningElement } from 'lwc';
export default class ChildEvent extends LightningElement {
  messagetoSend='';
  messageChangeHandler(event){
    this.messagetoSend=event.target.value;
  }
  sendMessageEvent(event){
    console.log(this.messagetoSend);
    const sendMsg=new CustomEvent('message',{
      detail:this.messagetoSend
    }
    
    );
    this.dispatchEvent(sendMsg);
  }
}