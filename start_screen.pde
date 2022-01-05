void startScreen(){
  background(0);
  fill(#FF0000);
  textFont(font, 60);
  text("X's and O's", 518, 300);
  buttons();
}

void buttons(){
  fill(0);
  strokeWeight(3);
  stroke(#0AAA36);
  rect(615, 500, 200, 50, 5);
  fill(#0AAA36);
  textFont(font, 30);
  text("Start", 667, 535);
  
  fill(0);
  rect(615, 630, 200, 50, 5);
  fill(#0AAA36);
  textFont(font, 25);
  text("Instructions", 625, 663);
}
