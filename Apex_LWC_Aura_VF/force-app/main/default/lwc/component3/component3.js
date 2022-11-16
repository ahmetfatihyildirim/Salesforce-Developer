import { LightningElement } from 'lwc';

export default class Component3 extends LightningElement {
    user=["Ali", "Ayse", "Ahmet"];
    num1=5;
    num2=9;
    
    get firstIndex(){
        return this.user[0];
    }

    get sumNums(){
        return this.num1 + this.num2;
    }

}