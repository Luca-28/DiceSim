void DisplayButton(String Text, float X, float Y){
  fill(255);
  rect(X,Y,65,30);
  fill(0);
  text(Text,X+5,Y+20);
}

void DisplayHistogram(int[] Data){
  //Scale = pow(0.999,Rolls.length);  //Dynamic scaling
  
  fill(255);
  for(int Result = 1; Result <= DiceType; Result++){
    int ResultAmount = 0;
    for(int i = 0; i < (RollCounter); i++){
      if(Data[i] == Result){
        rect(Result*(300/DiceType),400-ResultAmount*(5*Scale),180/DiceType,5*Scale);
        ResultAmount++;
        
        if(400 - ResultAmount*5*Scale < 100){  //Hard scaling when too much data
          Scale *= 0.5;
        }
      }
    }
    text(ResultAmount,Result*(300/DiceType),430);
  }
}
void CheckDiceType(float X, float Y){
  if(X > 200 && X < 250  &&  Y > 10 && Y < 60){
    DiceType++;
  }
  if(X > 200 && X < 250  &&  Y > 60 && Y < 90   &&   DiceType > 1){
    DiceType--;
  }
}

boolean NewRollPressed(float X, float Y){
  if(X > 10 && X < 60  &&  Y > 10 && Y < 40   &&   mousePressed){
    return true;
  } else {
    return false;
  }
}

boolean DeleteRollPressed(float X, float Y){
  if(X > 390 && X < 440  &&  Y > 10 && Y < 40   &&   mousePressed){
    return true;
  } else {
    return false;
  }
}

boolean NewRollsPressed(float X, float Y){
  if(X > 10 && X < 60  &&  Y > 60 && Y < 90   &&   mousePressed){
    return true;
  } else {
    return false;
  }
}

boolean DeleteRollsPressed(float X, float Y){
  if(X > 390 && X < 440  &&  Y > 60 && Y < 90   &&   mousePressed){
    return true;
  } else {
    return false;
  }
}

int DiceRoll(){
  return(int(random(1,DiceType+1)));
}
