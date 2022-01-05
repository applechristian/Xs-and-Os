//projectile class reference: https://www.openprocessing.org/sketch/118081/
class Click{
  PVector ball;
  Click(){
    if(dubs == true){
    ball = new PVector(699, 800);
    }
    else if(tripsR == true){
      ball = new PVector(477, 800);
    }
    else if (tripsL == true){
      ball = new PVector(957, 800);
    }
  }
  void move(){
    if(mousePressed == true){
      if(canThrow == true && p == 1){
        footballs.add(new Football());
        ballOut = true;
       --p;
  }
 
  } 
 }
}

class Football{
  PVector ball;
  float xBall, yBall, rotation, speed;
  
  Football(){
    if(dubs == true){
    ball = new PVector(699, 800);
    }
    else if(tripsR == true){
      ball = new PVector(477, 800);
    }
    else if (tripsL == true){
      ball = new PVector(957, 800);
    }
    xBall = mouseX;
    yBall = mouseY;
    rotation = atan2(yBall - ball.y, xBall - ball.x) / PI * 180;
    speed = 15;
  }
  
  void move(){
    ball.x = ball.x + cos(rotation/180*PI)*speed;
    ball.y = ball.y + sin(rotation/180*PI)*speed;
    noStroke();
    ellipse(ball.x, ball.y, 10, 10);
  }
  void caught(){
 if(dubs == true){
  if((theReceiver1.x + 20 > ball.x && theReceiver1.x - 20 < ball.x && theReceiver1.y + 20 > ball.y && theReceiver1.y - 20 < ball.y) || (theReceiver2.x + 20 > ball.x && theReceiver2.x - 20 < ball.x && theReceiver2.y + 20 > ball.y && theReceiver2.y - 20 < ball.y) || (theReceiver3.x + 20 > ball.x && theReceiver3.x - 20 < ball.x && theReceiver3.y + 20 > ball.y && theReceiver3.y - 20 < ball.y) || (theReceiver4.x + 20 > ball.x && theReceiver4.x - 20 < ball.x && theReceiver4.y + 20 > ball.y && theReceiver4.y - 20 < ball.y) || (runningBack1.x + 20 > ball.x && runningBack1.x - 20 < ball.x && runningBack1.y + 20 > ball.y && runningBack1.y - 20 < ball.y)){
       doubles();
       footballs = new ArrayList<Football>();
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
       score += 100;
       congrats = true;
       incomplete = false; 
       interception = false;
       sacked = false;
       

  }
  else if(ball.x > width || ball.x < 0 || ball.y < 0 || ball.y > height){
       doubles();
       footballs = new ArrayList<Football>();
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
       incomplete = true;
       interception = false;
       sacked = false;
       

  }
 else if((ball1.x + 20 > ball.x && ball1.x - 20 < ball.x && ball1.y + 20 > ball.y && ball1.y - 20 < ball.y) || (ball2.x + 20 > ball.x && ball2.x - 20 < ball.x && ball2.y + 20 > ball.y && ball2.y - 20 < ball.y) || (ball3.x + 20 > ball.x && ball3.x - 20 < ball.x && ball3.y + 20 > ball.y && ball3.y - 20 < ball.y) || (ball4.x + 20 > ball.x && ball4.x - 20 < ball.x && ball4.y + 20 > ball.y && ball4.y - 20 < ball.y) || (ball5.x + 20 > ball.x && ball5.x - 20 < ball.x && ball5.y + 20 > ball.y && ball5.y - 20 < ball.y)){
       doubles();
       footballs = new ArrayList<Football>();
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
       interception = true;
       sacked = false;
  }
 }
else if (tripsR == true){
     if((theReceiver5.x + 20 > ball.x && theReceiver5.x - 20 < ball.x && theReceiver5.y + 20 > ball.y && theReceiver5.y - 20 < ball.y) || (theReceiver6.x + 20 > ball.x && theReceiver6.x - 20 < ball.x && theReceiver6.y + 20 > ball.y && theReceiver6.y - 20 < ball.y) || (theReceiver7.x + 20 > ball.x && theReceiver7.x - 20 < ball.x && theReceiver7.y + 20 > ball.y && theReceiver7.y - 20 < ball.y) || (theReceiver8.x + 20 > ball.x && theReceiver8.x - 20 < ball.x && theReceiver8.y + 20 > ball.y && theReceiver8.y - 20 < ball.y) || (runningBack2.x + 20 > ball.x && runningBack2.x - 20 < ball.x && runningBack2.y + 20 > ball.y && runningBack2.y - 20 < ball.y)){
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
       score += 100;
       congrats = true;
       incomplete = false; 
       interception = false;
       sacked = false;
       
  }
   else if(ball.x > width || ball.x < 0 || ball.y < 0 || ball.y > height){
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
       incomplete = true; 
       interception = false;
       sacked = false;
       
  }
   else if((ball1.x + 20 > ball.x && ball1.x - 20 < ball.x && ball1.y + 20 > ball.y && ball1.y - 20 < ball.y) || (ball2.x + 20 > ball.x && ball2.x - 20 < ball.x && ball2.y + 20 > ball.y && ball2.y - 20 < ball.y) || (ball3.x + 20 > ball.x && ball3.x - 20 < ball.x && ball3.y + 20 > ball.y && ball3.y - 20 < ball.y) || (ball4.x + 20 > ball.x && ball4.x - 20 < ball.x && ball4.y + 20 > ball.y && ball4.y - 20 < ball.y) || (ball5.x + 20 > ball.x && ball5.x - 20 < ball.x && ball5.y + 20 > ball.y && ball5.y - 20 < ball.y)){
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
       interception = true;
       sacked = false;
       
  }
 }
  else if (tripsL == true){
     if((theReceiver9.x + 20 > ball.x && theReceiver9.x - 20 < ball.x && theReceiver9.y + 20 > ball.y && theReceiver9.y - 20 < ball.y) || (theReceiver10.x + 20 > ball.x && theReceiver10.x - 20 < ball.x && theReceiver10.y + 20 > ball.y && theReceiver10.y - 20 < ball.y) || (theReceiver11.x + 20 > ball.x && theReceiver11.x - 20 < ball.x && theReceiver11.y + 20 > ball.y && theReceiver11.y - 20 < ball.y) || (theReceiver11.x + 20 > ball.x && theReceiver11.x - 20 < ball.x && theReceiver11.y + 20 > ball.y && theReceiver11.y - 20 < ball.y) || (theReceiver12.x + 20 > ball.x && theReceiver12.x - 20 < ball.x && theReceiver12.y + 20 > ball.y && theReceiver12.y - 20 < ball.y) || (runningBack3.x + 20 > ball.x && runningBack3.x - 20 < ball.x && runningBack3.y + 20 > ball.y && runningBack3.y - 20 < ball.y)){
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
       score += 100;
       congrats = true;
       incomplete = false; 
       interception = false;
       sacked = false;
       

     }
    else if(ball.x > width || ball.x < 0 || ball.y < 0 || ball.y > height){
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
       incomplete = true; 
       interception = false;
       sacked = false;
       
       
     
   }
    else if((ball1.x + 20 > ball.x && ball1.x - 20 < ball.x && ball1.y + 20 > ball.y && ball1.y - 20 < ball.y) || (ball2.x + 20 > ball.x && ball2.x - 20 < ball.x && ball2.y + 20 > ball.y && ball2.y - 20 < ball.y) || (ball3.x + 20 > ball.x && ball3.x - 20 < ball.x && ball3.y + 20 > ball.y && ball3.y - 20 < ball.y) || (ball4.x + 20 > ball.x && ball4.x - 20 < ball.x && ball4.y + 20 > ball.y && ball4.y - 20 < ball.y) || (ball5.x + 20 > ball.x && ball5.x - 20 < ball.x && ball5.y + 20 > ball.y && ball5.y - 20 < ball.y)){
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
       interception = true;
       sacked = false;
       
     }
  }
  }
}
   
  
