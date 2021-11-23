void DisplayButton(String Text, float X, float Y){
  fill(255);
  rect(X,Y,50,30);
  fill(0);
  text(Text,X+5,Y+20);
}

void DisplayHistogram(int[] Data){
  fill(255);
  for(int Result = 1; Result <= 6; Result++){
    int ResultAmount = 0;
    for(int i = 0; i < RollCounter; i++){
      if(Data[i] == Result){
        rect(Result*70,400-ResultAmount*5,30,5);
        ResultAmount++;
      }
    }
    text(ResultAmount,Result*70,430);
  }
}

boolean NewRollPressed(float X, float Y){
  if(X > 10 && X < 60  && Y > 10 && Y < 40   && mousePressed){
    return true;
  } else {
    return false;
  }
}

boolean DeleteRollPressed(float X, float Y){
  if(X > 390 && X < 440  && Y > 10 && Y < 40   && mousePressed){
    return true;
  } else {
    return false;
  }
}

int DiceRoll(){
  return(int(random(1,7)));
}
