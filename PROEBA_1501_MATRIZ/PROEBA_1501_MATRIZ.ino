int C[]={14,4,5,11,7,12,16,17};
int F[]={10,15,9,13,2,8,3,6};
int a,b,i;

void setup() {
 for (i=0;i<8;i++){
  pinMode(F[i],OUTPUT);
  pinMode(C[i],OUTPUT);
 }

 for (i=0;i<8;i++){
  digitalWrite(F[i],HIGH);
  digitalWrite(C[i],LOW);
 }
}

void loop(){
  //digitalWrite(10,HIGH);
  //digitalWrite(17,LOW);
  /*delay(3000);
  digitalWrite(10,LOW);
  digitalWrite(14,HIGH);
  delay(3000);
  digitalWrite(15,HIGH);
  digitalWrite(14,LOW);
  delay(3000);*/
  //digitalWrite()
}

