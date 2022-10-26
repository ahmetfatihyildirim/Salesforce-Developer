import { LightningElement } from 'lwc';
export default class Calculation extends LightningElement {
num1=0;
num2=0;
result=0;
numberChangeHandler(event){
  if(event.target.name=='NumX'){
    this.num1=event.target.value;
  }
  if(event.target.name=='NumY'){
    this.num2=event.target.value;
  }
}
  sum(){
this.result=Number(this.num1)+Number(this.num2);
  }
  sub(){
  this.result=Number(this.num1)-Number(this.num2);
  
  }
  mul(){
    this.result=Number(this.num1)*Number(this.num2);
    
    }
  div(){
    this.result=(Number(this.num1)/Number(this.num2)).toFixed(2);
    
    }
}