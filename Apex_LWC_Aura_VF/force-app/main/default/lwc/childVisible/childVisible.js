import { LightningElement } from 'lwc';

export default class Comp4 extends LightningElement {
    areDetailsVisible=false;
    
    changeHandler(event){
        this.areDetailsVisible=event.target.checked;
    }
}