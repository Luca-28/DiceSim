int[] Rolls = new int[0];
int[] TempRolls = new int[0];
int RollCounter = 0;

int DiceType = 6;

float Scale = 1;

void setup(){
  size(500,500);
}

void draw(){
  clear();
  background(50);
  
  DisplayButton("Kast",10,10);
  DisplayButton("Slet",390,10);
  DisplayButton("Multikast",10,60);
  DisplayButton("Multislet",390,60);
  
  DisplayButton("DiceType+",200,10);
  DisplayButton("DiceType-",200,60);
  fill(255);
  text("Current DiceType: D" + DiceType,180,110);
  
  
  DisplayHistogram(Rolls);
  
  if(NewRollsPressed(mouseX,mouseY)){
    TempRolls = append(Rolls, DiceRoll());
    Rolls = TempRolls;
    RollCounter++;
  }
  
  if(DeleteRollsPressed(mouseX,mouseY) && RollCounter > 0){
    Rolls[RollCounter-1] = 0;
    RollCounter--;
  }
}

void mousePressed(){
  if(NewRollPressed(mouseX,mouseY)){
    TempRolls = append(Rolls, DiceRoll());
    Rolls = TempRolls;
    RollCounter++;
  }
  
  if(DeleteRollPressed(mouseX,mouseY) && RollCounter > 0){
    Rolls[RollCounter-1] = 0;
    RollCounter--;
  }
  
  CheckDiceType(mouseX,mouseY);
}
