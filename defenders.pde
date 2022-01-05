class Defender{
  color g;
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  Defender(float myX, float myY, float myXSpeed, float myYSpeed){
    g = color(0);
    x = myX;
    y = myY;
    xSpeed = myXSpeed;
    ySpeed = myYSpeed;
  }
  void appearDubsCover0(){
    fill(g);  
    stroke(#FF0000);
    strokeWeight(4);
    line(x, y, x + 10, y - 10);   
    line(x, y - 10, x + 10, y);
  }
   void appearTripsRCover0(){
    fill(g);  
    stroke(#FF0000);
    strokeWeight(4);
    line(x, y, x + 10, y - 10);   
    line(x, y - 10, x + 10, y);
  } 
  void appearTripsLCover0(){
    fill(g);  
    stroke(#FF0000);
    strokeWeight(4);
    line(x, y, x + 10, y - 10);   
    line(x, y - 10, x + 10, y);
  }
   void runRight(){ 
    x = x + xSpeed;
  }
  
  void runLeft(){
    x = x - xSpeed;
  }
  
  void runForward(){
    y = y - ySpeed;
  }
  
  void runBack(){  
    y = y + ySpeed;
  }
  
  void stop(){
    ySpeed = 0;
    xSpeed = 0;
  }
  
}

  void move1(){
      if(canThrow1 == true && j == 1){
        footballs1.add(new Football1());
       --j;
  
    }
  }
  
  
class Football1{
  float xBall, yBall, blitzSpeed, speed;
  
  Football1(){
    if(dubs == true){
        ball1 = new PVector(180, 680);   
        ball2 = new PVector(1210, 680);
        ball3 = new PVector(390, 680);
        ball4 = new PVector(1000, 680);
        ball5 = new PVector(687, 580);
        ball6 = new PVector(660, 630);
        ball7 = new PVector(745, 630);
      }
    else if(tripsR == true){
        ball1 = new PVector(199, 680);   
        ball2 = new PVector(1215, 680);
        ball3 = new PVector(745, 680);
        ball4 = new PVector(970, 680);
        ball5 = new PVector(465, 580);
        ball6 = new PVector(438, 630);
        ball7 = new PVector(523, 630);
    }
    else if (tripsL == true){
        ball1 = new PVector(175, 680);   
        ball2 = new PVector(1191, 680);
        ball3 = new PVector(420, 680);
        ball4 = new PVector(645, 680);
        ball5 = new PVector(945, 580);
        ball6 = new PVector(918, 630);
        ball7 = new PVector(1003, 630);
    }
    speed = 2.7;
    blitzSpeed = 1;
  }
  //reference to make an object follow another object: https://forum.processing.org/one/topic/how-do-i-get-objects-to-follow-a-separate-moving-object.html
  void move1(){
    if(dubs == true){
  stroke(#FF0000);
  strokeWeight(4);
  line(ball1.x, ball1.y, ball1.x + 10, ball1.y - 10);   
  line(ball1.x, ball1.y - 10, ball1.x + 10, ball1.y);
  float angle = atan2(theReceiver1.y - ball1.y, theReceiver1.x - ball1.x);
  float xPos = cos(angle) * speed + ball1.x;
  float yPos = sin(angle) * speed + ball1.y;
  ball1.set(xPos, yPos);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball2.x, ball2.y, ball2.x + 10, ball2.y - 10);   
  line(ball2.x, ball2.y - 10, ball2.x + 10, ball2.y);
  float angle2 = atan2(theReceiver4.y - ball2.y, theReceiver4.x - ball2.x);
  float xPos2 = cos(angle2) * speed + ball2.x;
  float yPos2 = sin(angle2) * speed + ball2.y;
  ball2.set(xPos2, yPos2);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball3.x, ball3.y, ball3.x + 10, ball3.y - 10);   
  line(ball3.x, ball3.y - 10, ball3.x + 10, ball3.y);
  float angle3 = atan2(theReceiver2.y - ball3.y, theReceiver2.x - ball3.x);
  float xPos3 = cos(angle3) * speed + ball3.x;
  float yPos3 = sin(angle3) * speed + ball3.y;
  ball3.set(xPos3, yPos3);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball4.x, ball4.y, ball4.x + 10, ball4.y - 10);   
  line(ball4.x, ball4.y - 10, ball4.x + 10, ball4.y);
  float angle4 = atan2(theReceiver3.y - ball4.y, theReceiver3.x - ball4.x);
  float xPos4 = cos(angle4) * speed + ball4.x;
  float yPos4 = sin(angle4) * speed + ball4.y;
  ball4.set(xPos4, yPos4);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball5.x, ball5.y, ball5.x + 10, ball5.y - 10);   
  line(ball5.x, ball5.y - 10, ball5.x + 10, ball5.y);
  float angle5 = atan2(runningBack1.y - ball5.y, runningBack1.x - ball5.x);
  float xPos5 = cos(angle5) * speed + ball5.x;
  float yPos5 = sin(angle5) * speed + ball5.y;
  ball5.set(xPos5, yPos5);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball6.x, ball6.y, ball6.x + 10, ball6.y - 10);   
  line(ball6.x, ball6.y - 10, ball6.x + 10, ball6.y);
  float angle6 = atan2(800 - ball6.y, 699 - ball6.x);
  float xPos6 = cos(angle6) * blitzSpeed + ball6.x;
  float yPos6 = sin(angle6) * blitzSpeed + ball6.y;
  ball6.set(xPos6, yPos6);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball7.x, ball7.y, ball7.x + 10, ball7.y - 10);   
  line(ball7.x, ball7.y - 10, ball7.x + 10, ball7.y);
  float angle7 = atan2(800 - ball7.y, 699 - ball7.x);
  float xPos7 = cos(angle7) * blitzSpeed + ball7.x;
  float yPos7 = sin(angle7) * blitzSpeed + ball7.y;
  ball7.set(xPos7, yPos7);
    }
  else if(tripsR == true){
  stroke(#FF0000);
  strokeWeight(4);
  line(ball1.x, ball1.y, ball1.x + 10, ball1.y - 10);   
  line(ball1.x, ball1.y - 10, ball1.x + 10, ball1.y);
  float angle = atan2(theReceiver5.y - ball1.y, theReceiver5.x - ball1.x);
  float xPos = cos(angle) * speed + ball1.x;
  float yPos = sin(angle) * speed + ball1.y;
  ball1.set(xPos, yPos);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball2.x, ball2.y, ball2.x + 10, ball2.y - 10);   
  line(ball2.x, ball2.y - 10, ball2.x + 10, ball2.y);
  float angle2 = atan2(theReceiver8.y - ball2.y, theReceiver8.x - ball2.x);
  float xPos2 = cos(angle2) * speed + ball2.x;
  float yPos2 = sin(angle2) * speed + ball2.y;
  ball2.set(xPos2, yPos2);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball3.x, ball3.y, ball3.x + 10, ball3.y - 10);   
  line(ball3.x, ball3.y - 10, ball3.x + 10, ball3.y);
  float angle3 = atan2(theReceiver6.y - ball3.y, theReceiver6.x - ball3.x);
  float xPos3 = cos(angle3) * speed + ball3.x;
  float yPos3 = sin(angle3) * speed + ball3.y;
  ball3.set(xPos3, yPos3);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball4.x, ball4.y, ball4.x + 10, ball4.y - 10);   
  line(ball4.x, ball4.y - 10, ball4.x + 10, ball4.y);
  float angle4 = atan2(theReceiver7.y - ball4.y, theReceiver7.x - ball4.x);
  float xPos4 = cos(angle4) * speed + ball4.x;
  float yPos4 = sin(angle4) * speed + ball4.y;
  ball4.set(xPos4, yPos4);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball5.x, ball5.y, ball5.x + 10, ball5.y - 10);   
  line(ball5.x, ball5.y - 10, ball5.x + 10, ball5.y);
  float angle5 = atan2(runningBack2.y - ball5.y, runningBack2.x - ball5.x);
  float xPos5 = cos(angle5) * speed + ball5.x;
  float yPos5 = sin(angle5) * speed + ball5.y;
  ball5.set(xPos5, yPos5);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball6.x, ball6.y, ball6.x + 10, ball6.y - 10);   
  line(ball6.x, ball6.y - 10, ball6.x + 10, ball6.y);
  float angle6 = atan2(800 - ball6.y, 477 - ball6.x);
  float xPos6 = cos(angle6) * blitzSpeed + ball6.x;
  float yPos6 = sin(angle6) * blitzSpeed + ball6.y;
  ball6.set(xPos6, yPos6);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball7.x, ball7.y, ball7.x + 10, ball7.y - 10);   
  line(ball7.x, ball7.y - 10, ball7.x + 10, ball7.y);
  float angle7 = atan2(800 - ball7.y, 477 - ball7.x);
  float xPos7 = cos(angle7) * blitzSpeed + ball7.x;
  float yPos7 = sin(angle7) * blitzSpeed + ball7.y;
  ball7.set(xPos7, yPos7);
  }
  else if(tripsL == true){
  stroke(#FF0000);
  strokeWeight(4);
  line(ball1.x, ball1.y, ball1.x + 10, ball1.y - 10);   
  line(ball1.x, ball1.y - 10, ball1.x + 10, ball1.y);
  float angle = atan2(theReceiver9.y - ball1.y, theReceiver9.x - ball1.x);
  float xPos = cos(angle) * speed + ball1.x;
  float yPos = sin(angle) * speed + ball1.y;
  ball1.set(xPos, yPos);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball2.x, ball2.y, ball2.x + 10, ball2.y - 10);   
  line(ball2.x, ball2.y - 10, ball2.x + 10, ball2.y);
  float angle2 = atan2(theReceiver12.y - ball2.y, theReceiver12.x - ball2.x);
  float xPos2 = cos(angle2) * speed + ball2.x;
  float yPos2 = sin(angle2) * speed + ball2.y;
  ball2.set(xPos2, yPos2);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball3.x, ball3.y, ball3.x + 10, ball3.y - 10);   
  line(ball3.x, ball3.y - 10, ball3.x + 10, ball3.y);
  float angle3 = atan2(theReceiver10.y - ball3.y, theReceiver10.x - ball3.x);
  float xPos3 = cos(angle3) * speed + ball3.x;
  float yPos3 = sin(angle3) * speed + ball3.y;
  ball3.set(xPos3, yPos3);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball4.x, ball4.y, ball4.x + 10, ball4.y - 10);   
  line(ball4.x, ball4.y - 10, ball4.x + 10, ball4.y);
  float angle4 = atan2(theReceiver11.y - ball4.y, theReceiver11.x - ball4.x);
  float xPos4 = cos(angle4) * speed + ball4.x;
  float yPos4 = sin(angle4) * speed + ball4.y;
  ball4.set(xPos4, yPos4);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball5.x, ball5.y, ball5.x + 10, ball5.y - 10);   
  line(ball5.x, ball5.y - 10, ball5.x + 10, ball5.y);
  float angle5 = atan2(runningBack3.y - ball5.y, runningBack3.x - ball5.x);
  float xPos5 = cos(angle5) * speed + ball5.x;
  float yPos5 = sin(angle5) * speed + ball5.y;
  ball5.set(xPos5, yPos5);
 
  stroke(#FF0000);
  strokeWeight(4);
  line(ball6.x, ball6.y, ball6.x + 10, ball6.y - 10);   
  line(ball6.x, ball6.y - 10, ball6.x + 10, ball6.y);
  float angle6 = atan2(800 - ball6.y, 957 - ball6.x);
  float xPos6 = cos(angle6) * blitzSpeed + ball6.x;
  float yPos6 = sin(angle6) * blitzSpeed + ball6.y;
  ball6.set(xPos6, yPos6);
  
  stroke(#FF0000);
  strokeWeight(4);
  line(ball7.x, ball7.y, ball7.x + 10, ball7.y - 10);   
  line(ball7.x, ball7.y - 10, ball7.x + 10, ball7.y);
  float angle7 = atan2(800 - ball7.y, 957 - ball7.x);
  float xPos7 = cos(angle7) * blitzSpeed + ball7.x;
  float yPos7 = sin(angle7) * blitzSpeed + ball7.y;
  ball7.set(xPos7, yPos7);
    
  } 
  }
  
  void sacked1(){
  if(dubs == true){
  if((ball5.y > 800 || ball6.y > 800 || ball7.y > 800) && ballOut == false){
       doubles();
       footballs = new ArrayList<Football>();
       //footballs1 = new ArrayList<Football1>();
       theReceiver1 = new Receiver(185, 703, 3, 3);
       theReceiver2 = new Receiver(395, 730, 3, 3);
       theReceiver3 = new Receiver(1005, 730, 3, 3);
       theReceiver4 = new Receiver(1215, 703, 3, 3);  
       runningBack1 = new Receiver(699, 845, 2, 2);
       receiver1 = false;
       receiver2 = false;
       receiver3 = false;
       receiver4 = false;
        receiver5 = false;
       receiver6 = false;
       receiver7 = false;
       receiver8 = false;
        receiver9 = false;
       receiver10 = false;
       receiver11 = false;
       receiver12 = false;
       back1 = false;
       back2 = false;
       back3 = false;
       fiveOut159 = false;
       tenOut159 = false;
       fiveIn159 = false;
       tenIn159 = false;
       fade159 = false;
       curl159= false;
       corner159 = false;
       post159 = false;
       comeback159 = false;
       slant159 = false;
       fiveOut2610 = false;
      tenOut2610 = false; 
      fiveIn2610 = false;
      tenIn2610 = false;
      fade2610 = false;
      curl2610 = false;
      post2610 = false;
      comeback2610 = false;
    corner2610 = false;
    slant2610 = false;
    fiveOut3711 = false;
       tenOut3711 = false;  
    fiveIn3711 = false;
    tenIn3711 = false;
    fade3711 = false;
    curl3711 = false;
    post3711 = false;
    comeback3711 = false;
    corner3711 = false;
    slant3711 = false;
    fiveOut4812 = false;
    tenOut4812 = false;
    fiveIn4812 = false;
    tenIn4812 = false;
    fade4812 = false;
    curl4812 = false;
    corner4812 = false;
    post4812 = false;
    comeback4812 = false;
    slant4812 = false;
     swingRight123 = false;
      swingLeft123 = false;
      hookInRight123 = false;
      hookInLeft123 = false;
      hookOutRight123 = false;
      hookOutLeft123 = false;
      texasRight123 = false;
      texasLeft123 = false;
      seamLeft123 = false;
      seamRight123 = false;
       j = 1;
       p = 1;
        
       canThrow = false;
       canThrow1 = false;
       lives -= 1;
       congrats = false;
       incomplete = false;
       interception = false;
       sacked = true;
       ballOut = false; 
  }
  }
 else if (tripsR == true){
     if((ball5.y > 800 || ball6.y > 800 || ball7.y > 800) && ballOut == false){
       tripsRight();
       footballs = new ArrayList<Football>();
         theReceiver5 = new Receiver(204, 703, 3, 3);
  theReceiver6 = new Receiver(750, 730, 3, 3);
  theReceiver7 = new Receiver(975, 730, 3, 3);
  theReceiver8 = new Receiver(1220, 703, 3, 3);         
  runningBack2 = new Receiver(477, 845, 2, 2);
       receiver1 = false;
       receiver2 = false;
       receiver3 = false;
       receiver4 = false;
        receiver5 = false;
       receiver6 = false;
       receiver7 = false;
       receiver8 = false;
        receiver9 = false;
       receiver10 = false;
       receiver11 = false;
       receiver12 = false;
       back1 = false;
       back2 = false;
       back3 = false;
       fiveOut159 = false;
       tenOut159 = false;
       fiveIn159 = false;
       tenIn159 = false;
       fade159 = false;
       curl159= false;
       corner159 = false;
       post159 = false;
       comeback159 = false;
       slant159 = false;
       fiveOut2610 = false;
      tenOut2610 = false; 
      fiveIn2610 = false;
      tenIn2610 = false;
      fade2610 = false;
      curl2610 = false;
      post2610 = false;
      comeback2610 = false;
    corner2610 = false;
    slant2610 = false;
    fiveOut3711 = false;
       tenOut3711 = false;  
    fiveIn3711 = false;
    tenIn3711 = false;
    fade3711 = false;
    curl3711 = false;
    post3711 = false;
    comeback3711 = false;
    corner3711 = false;
    slant3711 = false;
    fiveOut4812 = false;
    tenOut4812 = false;
    fiveIn4812 = false;
    tenIn4812 = false;
    fade4812 = false;
    curl4812 = false;
    corner4812 = false;
    post4812 = false;
    comeback4812 = false;
    slant4812 = false;
     swingRight123 = false;
      swingLeft123 = false;
      hookInRight123 = false;
      hookInLeft123 = false;
      hookOutRight123 = false;
      hookOutLeft123 = false;
      texasRight123 = false;
      texasLeft123 = false;
      seamLeft123 = false;
      seamRight123 = false;
       j = 1;
       p = 1;
        
       canThrow = false;
       canThrow1 = false;
       lives -= 1;
       congrats = false;
       incomplete = false; 
       interception = false;
       sacked = true;
       ballOut = false;
  }
 }
  if (tripsL == true){
     if((ball5.y > 800 || ball6.y > 800 || ball7.y > 800) && ballOut == false){
       tripsLeft();
       footballs = new ArrayList<Football>();
         theReceiver9 = new Receiver(180, 703, 3, 3);
  theReceiver10 = new Receiver(425, 730, 3, 3);
  theReceiver11 = new Receiver(650, 730, 3, 3);     
  theReceiver12 = new Receiver(1196, 703, 3, 3);     
  runningBack3 = new Receiver(957, 845, 2, 2);
       receiver1 = false;
       receiver2 = false;
       receiver3 = false;
       receiver4 = false;
        receiver5 = false;
       receiver6 = false;
       receiver7 = false;
       receiver8 = false;
        receiver9 = false;
       receiver10 = false;
       receiver11 = false;
       receiver12 = false;
       back1 = false;
       back2 = false;
       back3 = false;
       fiveOut159 = false;
       tenOut159 = false;
       fiveIn159 = false;
       tenIn159 = false;
       fade159 = false;
       curl159= false;
       corner159 = false;
       post159 = false;
       comeback159 = false;
       slant159 = false;
       fiveOut2610 = false;
      tenOut2610 = false; 
      fiveIn2610 = false;
      tenIn2610 = false;
      fade2610 = false;
      curl2610 = false;
      post2610 = false;
      comeback2610 = false;
    corner2610 = false;
    slant2610 = false;
    fiveOut3711 = false;
       tenOut3711 = false;  
    fiveIn3711 = false;
    tenIn3711 = false;
    fade3711 = false;
    curl3711 = false;
    post3711 = false;
    comeback3711 = false;
    corner3711 = false;
    slant3711 = false;
    fiveOut4812 = false;
    tenOut4812 = false;
    fiveIn4812 = false;
    tenIn4812 = false;
    fade4812 = false;
    curl4812 = false;
    corner4812 = false;
    post4812 = false;
    comeback4812 = false;
    slant4812 = false;
     swingRight123 = false;
      swingLeft123 = false;
      hookInRight123 = false;
      hookInLeft123 = false;
      hookOutRight123 = false;
      hookOutLeft123 = false;
      texasRight123 = false;
      texasLeft123 = false;
      seamLeft123 = false;
      seamRight123 = false;
       j = 1;
       p = 1;
        
       canThrow = false;
       canThrow1 = false;
       lives -= 1;
       congrats = false;
       incomplete = false; 
       interception = false;
       sacked = true;
       ballOut = false;
   }
  }
 }
}
