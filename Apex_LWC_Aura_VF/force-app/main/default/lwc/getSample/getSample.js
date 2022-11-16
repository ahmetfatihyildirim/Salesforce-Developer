import { LightningElement } from 'lwc';

export default class Comp3 extends LightningElement {
    user=["Ali","Ahmet","Ayse"];
    num1=1;
    num2=6;

    get firstIndex(){
        return this.user[0];
    }

    get sumNums(){
        return this.num1 + this.num2;
    }
}