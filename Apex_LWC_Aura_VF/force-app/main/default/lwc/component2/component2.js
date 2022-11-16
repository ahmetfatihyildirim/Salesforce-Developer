import { LightningElement } from 'lwc';

export default class Component2 extends LightningElement {

    weight=0;
    height=0;
    result="";
    calculation=0;

    changeHandler1(event){   
        this.weight = event.target.value;
    }

    changeHandler2(event){
        this.height = event.target.value;
    }

    buttonHandler(){
        this.calculation=parseFloat(this.weight) / (parseFloat(this.height) * parseFloat(this.height));
        this.calculation=parseFloat(this.calculation).toFixed(2);

        if (this.calculation<=18.4) {
            this.result="Underweight";
        }else if(this.calculation>18.4 && this.calculation<=25){
            this.result="Normal";
        }else if(this.calculation>25 && this.calculation<=40){
            this.result="Overweight";
        }else{
            this.result="Obese";
        }
    }
}