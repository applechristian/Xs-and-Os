class Receiver{  //object-oriented programming reference: https://processing.org/tutorials/objects/
  color g;
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  Receiver(float myX, float myY, float myXSpeed, float myYSpeed){
    g = color(0);
    x = myX;
    y = myY;
    xSpeed = myXSpeed;
    ySpeed = myYSpeed;
  }
  
  void appearDubs(){
    fill(g);  
    stroke(#0AAA36);
    strokeWeight(3);
    ellipse(x, y, 15, 15);   
  }
  
   void appearTripsR(){
    fill(g);  
    stroke(#0AAA36);
    strokeWeight(3);
    ellipse(x, y, 15, 15);  
  }
  
  void appearTripsL(){
    fill(g);
    stroke(#0AAA36);
    strokeWeight(3);
    ellipse(x, y, 15, 15);
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
  
  void fiveOutL(){
    if(y > 600){
      runForward();
    }
    else if(y <= 600 && x < 1390 && x > 10){
      runLeft();
    }
    else{
      runForward();
    }
  }
  
  void fiveOutR(){
    if(y > 600){
      runForward();
    }
    else if(y <= 600 && x < 1390 && x > 10){
      runRight();
    }
    else{
      runForward();
    }
  }
    
  void tenOutL(){
    if(y > 505){
      runForward();
    }
    else if(y <= 505 && x < 1390 && x > 10){
      runLeft();
    }
    else{
      runForward();
    }
  }
  
  void tenOutR(){
    if(y > 505){
      runForward();
    }
    else if(y <= 505 && x < 1390 && x > 10){
      runRight();
    }
    else{
      runForward();
    }
  }
  
  void fiveInL(){
    if(y > 600){
      runForward();
    }
    else if(y <= 600 && x < 1390 && x > 10){
      runRight();
    }
    else{
      runForward();
    }
  }
  
  void fiveInR(){
    if(y > 600){
      runForward();
    }
    else if(y <= 600 && x < 1390 && x > 10){
      runLeft();
    }
    else{
      runForward();
    }
  }
  
  void tenInL(){
    if(y > 505){
      runForward();
    }
    else if(y <= 505 && x < 1390 && x > 10){
      runRight();
    }
    else{
      runForward();
    }
  }
  
  void tenInR(){
    if(y > 505){
      runForward();
    }
    else if(y <= 505 && x < 1390 && x > 10){
      runLeft();
    }
    else{
      runForward();
    }
  }
  
  void fade(){
    runForward();
  }
   
  void curl1L(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 185 || x == 395)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runRight();
    }
  }
  void curl1R(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 1005 || x == 1215)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runLeft();
    }
  }
  void curl2L(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 204 || x == 750)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runRight();
    } 
  }
   void curl2R(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 750 || x == 975 || x == 1220)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runLeft();
    }
  }
  void curl3L(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 180 || x == 425 || x ==650)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runRight();
    }
  }
  void curl3R(){ 
    curl = true;
    if(y > 475 && curl == true && (x == 650 || x == 1196)){
    runForward();
    }
    else if(y < 505){
      curl = false;
      runBack();
      runLeft();
    }
  }
    void comeback1L(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 185 || x == 395)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runLeft();
    }
  }
  void comeback1R(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 1005 || x == 1215)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runRight();
    }
  }
  void comeback2L(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 204 || x == 750)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runLeft();
    } 
  }
   void comeback2R(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 750 || x == 975 || x == 1220)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runRight();
    }
  }
  void comeback3L(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 180 || x == 425 || x ==650)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runLeft();
    }
  }
  void comeback3R(){ 
    comeback = true;
    if(y > 475 && comeback == true && (x == 650 || x == 1196)){
    runForward();
    }
    else if(y < 505){
      comeback = false;
      runBack();
      runRight();
    }
  }
  void postL(){
    if(y > 475){
      runForward();
    }
    else if(y < 505){
      runForward();
      runRight();
    }
  }
  void postR(){
    if(y > 475){
      runForward();
    }
    else if(y < 505){
      runForward();
      runLeft();
    }
  }
  void cornerL(){
    if(y > 475){
      runForward();
    }
    else if(y < 505 && x > 10){
      runForward();
      runLeft(); 
    }
    else{
      runForward();
    }
  }
  void cornerR(){
    if(y > 475){
      runForward();
    }
    else if(y < 505 && x < 1390){
      runForward();
      runRight(); 
    }
    else{
      runForward();
    }
  }
   void slantL(){
    if(y > 638){
      xSpeed = 3;
      ySpeed = 3;
      runForward();
    }
    else if(y < 668 && x < 1390){
      xSpeed = 1.15;
      ySpeed = 1.15;
      runForward();
      runRight();
      runRight();
      runRight();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
      runForward();
    }
  }
  void slantR(){
    if(y > 638){
      xSpeed = 3;
      ySpeed = 3;
      runForward();
    }
    else if(y < 668 && x > 10){
      xSpeed = 1.15;
      ySpeed = 1.15;
      runForward();
      runLeft();
      runLeft();
      runLeft();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
      runForward();
    }
  }
  void swingRightDubs(){
    if(x <= 1000){
       xSpeed = 3;
      ySpeed = 3;
      runRight();
    }
    else if(x > 1000 && x < 1300){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runRight();
      runRight();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
   void swingRightR(){
    if(x <= 778){
       xSpeed = 3;
      ySpeed = 3;
      runRight();
    }
    else if(x > 778 && x < 1300){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runRight();
      runRight();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
   void swingRightL(){
    if(x <= 1100){
      xSpeed = 3;
      ySpeed = 3;
      runRight();
    }
    else if(x > 1100 && x < 1300){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runRight();
      runRight();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
  void swingLeftDubs(){
    if(x >= 400){
       xSpeed = 3;
      ySpeed = 3;
      runLeft();
    }
    else if(x < 400 && x > 100){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runLeft();
      runLeft();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
   void swingLeftR(){
    if(x >= 344){
       xSpeed = 3;
      ySpeed = 3;
      runLeft();
    }
    else if(x < 344 && x > 100){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runLeft();
      runLeft();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
   void swingLeftL(){
    if(x >= 656){
      xSpeed = 3;
      ySpeed = 3;
      runLeft();
    }
    else if(x < 656 && x > 100){
      xSpeed = 1.5;
      ySpeed = 1.5;
      runLeft();
      runLeft();
      runForward();
    }
    else{
      xSpeed = 3;
      ySpeed = 3;
     runForward(); 
    }
  }
  void hookInRight(){
   hookRight = true; 
    if(y > 810){
      runRight();
      runForward();
    }
    else if(y > 580 && hookRight == true && (x == 735 || x == 513 || x == 993)){
      xSpeed = 3;
      ySpeed = 3;
    runForward();
    }
    else if(y < 600){
      hookLeft = false;
      runBack();
      runLeft();
    }
  }
  void hookInLeft(){
    hookLeft = true;
    if(y > 810){
      runLeft();
      runForward();
    }
    else if(y > 580 && hookLeft == true && (x == 663 || x == 441 || x == 921)){
      xSpeed = 3;
      ySpeed = 3;
    runForward();
    }
    else if(y < 600){
      hookLeft = false;
      runBack();
      runRight();
    }
  }
  void hookOutRight(){
   hookRight = true; 
    if(y > 810){
      runRight();
      runForward();
    }
    else if(y > 580 && hookRight == true && (x == 735 || x == 513 || x == 993)){
      xSpeed = 3;
      ySpeed = 3;
    runForward();
    }
    else if(y < 600){
      hookLeft = false;
      runBack();
      runRight();
    }
  }
   void hookOutLeft(){
    hookLeft = true;
    if(y > 810){
      runLeft();
      runForward();
    }
    else if(y > 580 && hookLeft == true && (x == 663 || x == 441 || x == 921)){
      xSpeed = 3;
      ySpeed = 3;
    runForward();
    }
    else if(y < 600){
      hookLeft = false;
      runBack();
      runLeft();
    }
  }
  void texasRight(){
   if(y >= 695){
    runRight();
    runForward();
   }
   else if(y < 695 && y > 541){
     runLeft();
     runForward();
   }
   else{
     stop();
   }
  }
   void texasLeft(){
   if(y >= 695){
    runLeft();
    runForward();
   }
   else if(y < 695 && y > 541){
     runRight();
     runForward();
   }
   else{
     stop();
   }
  }
  void seamRight(){
    if(y > 810){
      runRight();
      runForward();
    }
    else{
     xSpeed = 3;
     ySpeed = 3;
      runForward();
    }
  }
  void seamLeft(){
    if(y > 810){
      runLeft();
      runForward();
    }
    else{
       xSpeed = 3;
     ySpeed = 3;
      runForward();
    }
  }
}
  
 
