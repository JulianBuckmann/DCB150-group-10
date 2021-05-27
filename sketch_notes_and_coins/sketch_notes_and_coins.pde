/* --- TU/e Digital Craftsmanship ---
    Group 10
    Julian Buckmann
    Daniel Bolt
    Roeland Hoefsloot
*/ 

float[] weights = {0.92,0.80,0.72,0.68,8.50,7.50,7.80,5.74,4.10,3.92};   //Weights of different denominations in grams
int fifty=0;
int twenty=0;
int ten=0;
int five=0;
int two=0;
int one=0;
int half=0;
int fifth=0;
int tenth=0;
int twentieth=0;
Table data;

void setup(){
  data = loadTable("data-set-secure-3.csv", "header");
  
  int rows = data.getRowCount();
  ArrayList<Float> deductions = new ArrayList<Float>();
  
  for (int i = 0; i<rows; i++){
    if (data.getString(i, 0).equals("Af")){
      Float tempfloat = float(data.getString(i,1).replaceAll(",","."));
      deductions.add(tempfloat);
    }
  }

int h = 0;
while(h<deductions.size()){
  while(deductions.get(h)>50){
    deductions.set(h,deductions.get(h)-50);
    fifty++;
  }
  while(deductions.get(h)>20){
    deductions.set(h,deductions.get(h)-20);
    twenty++;
  }
  while(deductions.get(h)>10){
    deductions.set(h,deductions.get(h)-10);
    ten++;
  }
  while(deductions.get(h)>5){
    deductions.set(h,deductions.get(h)-5);
    five++;
  }
  while(deductions.get(h)>2){
    deductions.set(h,deductions.get(h)-2);
    two++;
  }
  while(deductions.get(h)>1){
    deductions.set(h,deductions.get(h)-1);
    one++;
  }
  while(deductions.get(h)>0.5){
    deductions.set(h,deductions.get(h)-0.5);
    half++;
  }
  while(deductions.get(h)>0.2){
    deductions.set(h,deductions.get(h)-0.2);
    fifth++;
  }
  while(deductions.get(h)>0.1){
    deductions.set(h,deductions.get(h)-0.1);
    tenth++;
  }
    while(deductions.get(h)>0.03){
    deductions.set(h,deductions.get(h)-0.05);
    twentieth++;
  }
  h++;
}

print("amount of fifties ",fifty,"\n");
print("amount of twenties ",twenty,"\n");
print("amount of tens ",ten,"\n");
print("amount of fives ",five,"\n");
print("amount of twos ",two,"\n");
print("amount of ones ",one,"\n");
print("amount of fifty cents ",half,"\n");
print("amount of twenty cents ",fifth,"\n");
print("amount of ten cents ",tenth,"\n");
print("amount of five cents ",twentieth,"\n");

float tot_weight = fifty*weights[0]+twenty*weights[1]+ten*weights[2]+five*weights[3]+two*weights[4]+one*weights[5]+half*weights[6]+fifth*weights[7]+tenth*weights[8]+twentieth*weights[9];
print("total weigth of money in grams = ",tot_weight,"\n");
}
