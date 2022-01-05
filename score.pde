void score(){
  fill(#0AAA36);
  textFont(font, 15);
  text("Score: " + score, 1050, 20);
  if(score > highScore){
    highScore = score;
  }
}

void lives(){
 fill(#0AAA36);
  textFont(font, 15);
  text("Lives Remaining: " + lives, 1220, 20); 
}

void highScore(){
  fill(#0AAA36);
  textFont(font, 15);
  text("High Score: " + highScore, 835, 20);
}
