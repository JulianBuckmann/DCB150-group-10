float i = random(0.00,500.00); //random money values to test with
float i_money = Math.round(i * 100.0) / 100.0;
print("money =", i_money, "\n");

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


int[] weights = new int[10];
weights[0] = 90;  // Assign weight of 50 euro note
weights[1] = 90;  // Assign weight of 20 euro note
weights[2] = 90;  // Assign weight of 10 euro note
weights[3] = 90;  // Assign weight of 5 euro note
weights[4] = 90;  // Assign weight of 2 euro coin
weights[5] = 90;  // Assign weight of 1 euro coin
weights[6] = 90;  // Assign weight of 50 eurocent coin
weights[7] = 90;  // Assign weight of 20 eurocent coin
weights[8] = 90;  // Assign weight of 10 eurocent coin
weights[9] = 90;  // Assign weight of 5 eurocent coin



  while(i_money>50){
    i_money =i_money-50;
    fifty++;
  }
  while(i_money>20){
    i_money =i_money-20;
    twenty++;
  }
  while(i_money>10){
    i_money =i_money-10;
    ten++;
  }
  while(i_money>5){
    i_money =i_money-5;
    five++;
  }
  while(i_money>2){
    i_money =i_money-2;
    two++;
  }
  while(i_money>1){
    i_money =i_money-1;
    one++;
  }
  while(i_money>0.5){
    i_money =i_money-0.5;
    half++;
  }
  while(i_money>0.2){
    i_money =i_money-0.2;
    fifth++;
  }
  while(i_money>0.1){
    i_money =i_money-0.1;
    tenth++;
  }
    while(i_money>0.05){
    i_money =i_money-0.05;
    twentieth++;
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
