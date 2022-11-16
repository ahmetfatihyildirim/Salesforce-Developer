import { LightningElement,wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import mc from '@salesforce/messageChannel/mc__c';
export default class MsgChannelPublisher extends LightningElement {
  @wire(MessageContext)
  MessageContext;
  sendMessage='Hello I\'m publisher...';
  messageChangeHandler(event){
this.sendMessage=event.target.value;
  }
  handlePublish(event){
    const payload = {
      recordId:this.sendMessage,
      recordData:'empty record data'
    }
    publish(this.MessageContext,mc,payload);
  }
}