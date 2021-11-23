int RollCounter = 0;
int[] Rolls = new int[100];

void setup(){
  size(500,500);
}

void draw(){
  clear();
  background(50);
  
  DisplayButton("KAST !!!",10,10);
  DisplayButton("SLET !!!",390,10);
  
  DisplayHistogram(Rolls);
  
  if(NewRollPressed(mouseX,mouseY) && RollCounter < 99){
    RollCounter++;
    Rolls[RollCounter] = DiceRoll();
  }
  
  if(DeleteRollPressed(mouseX,mouseY) && RollCounter > 0){
    Rolls[RollCounter] = 0;
    RollCounter--;
  }
}
