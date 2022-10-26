import { LightningElement,track } from 'lwc';
export default class Cohort2Hello extends LightningElement {
  // 2020 track decorator is no longer needed
  fname='';
  lname='';
// track decorator is an obligation
  @track fullname={
    firstName:'',
    lastName:''
  }
  messageChangeHandler(event){
    //console.log(event.target.name);
    // console.log(event.target.value);
    if(event.target.name=='firstName'){
        this.fname=event.target.value;
        this.fullname.firstName=event.target.value;
    }
    if(event.target.name=='lastName'){
      this.lname=event.target.value;
      this.fullname.lastName=event.target.value;
    }
  }
  messageSent(event){
    console.log(this.fname);
    console.log(this.lname);
    console.log(this.fullname);
  }
}