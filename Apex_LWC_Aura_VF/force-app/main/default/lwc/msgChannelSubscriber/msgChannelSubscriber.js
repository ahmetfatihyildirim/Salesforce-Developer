import { LightningElement, wire } from 'lwc';
import mc from '@salesforce/messageChannel/mc__c';
import {
  subscribe,
  unsubscribe,
  APPLICATION_SCOPE,
  MessageContext
} from 'lightning/messageService';
export default class MsgChannelSubscriber extends LightningElement {
@wire(MessageContext)
MessageContext;
subs=null;
receivedMessage;
subsToMC(){
  if(!this.subs){
    this.subs=subscribe(
      this.MessageContext,
      mc,
      (message)=>this.handleMsg(message),
      { scope: APPLICATION_SCOPE }
    );
  }
}
unSubsToMC(){
  unsubscribe(this.subs);
  this.subs=null;
}
handleMsg(message){
  this.receivedMessage=message.recordId +' - ' + message.recordData;
 
}
connectedCallback(){
  // subs to mc
  this.subsToMC();
}
disconnectedCallback(){
  // unsubs
  this.unSubsToMC();
}
}