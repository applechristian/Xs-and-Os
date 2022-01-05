void mousePressed(){
 if(beginning == true){  //difficulty buttons on separate screens
  if(mouseX > 615 && mouseX < 815 && mouseY > 500 && mouseY < 550){  //start button
    beginning = !beginning;
    startGame = !startGame;
  }
  else if(mouseX > 615 && mouseX < 815 && mouseY > 630 && mouseY < 680){  //instructions button
    beginning = !beginning;
    instructions = !instructions;
  } 
 }
  else if(instructions == true){
   if(mouseX > 0 && mouseX < 75 && mouseY > 0 && mouseY < 30){
    beginning = !beginning;
    instructions = !instructions;
  }
 }
  else if(gameOver == true){
   if(mouseX > 647 && mouseX < 747 && mouseY > 483 && mouseY < 508){
     startGame = !startGame;
     lives += 5;
     congrats = false;
     incomplete = false;
     interception = false;
     sacked = false;
     score = 0;
     
   }
 }
  else if(dubs == true){
   if(mouseX > 0 && mouseX < 150 && mouseY > 875 && mouseY < 900){
     doubles();
   }
   else if(mouseX > 150 && mouseX < 300 && mouseY > 875 && mouseY < 900){
     tripsRight();
   }
   else if(mouseX > 300 && mouseX < 450 && mouseY > 875 && mouseY < 900){
     tripsLeft();
   }
   else if(mouseX > 1250 && mouseX < 1400 && mouseY > 875 && mouseY < 900){
     
   }
   else if(mouseX > 0 && mouseX < 75 && mouseY > 0 && mouseY < 30){
    beginning = !beginning;
    startGame = !startGame;
  }
  }
  else if(tripsR == true){
   if(mouseX > 0 && mouseX < 150 && mouseY > 875 && mouseY < 900){
     doubles();
   }
   else if(mouseX > 150 && mouseX < 300 && mouseY > 875 && mouseY < 900){
     tripsRight();
   }
   else if(mouseX > 300 && mouseX < 450 && mouseY > 875 && mouseY < 900){
     tripsLeft();
   }
   else if(mouseX > 0 && mouseX < 75 && mouseY > 0 && mouseY < 30){
    beginning = !beginning;
    startGame = !startGame;
  }
  }
  else if(tripsL == true){
   if(mouseX > 0 && mouseX < 150 && mouseY > 875 && mouseY < 900){
     doubles();
   }
   else if(mouseX > 150 && mouseX < 300 && mouseY > 875 && mouseY < 900){
     tripsRight();
   }
   else if(mouseX > 300 && mouseX < 450 && mouseY > 875 && mouseY < 900){
     tripsLeft();
   }
   else if(mouseX > 0 && mouseX < 75 && mouseY > 0 && mouseY < 30){
    beginning = !beginning;
    startGame = !startGame;
  }
 }
}
 
 
