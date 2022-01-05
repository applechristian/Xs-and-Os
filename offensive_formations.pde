void doubles(){
  dubs = true;
  tripsR = false;
  tripsL = false;
  background(0);
  fill(0);
  fill(#0AAA36);
  textFont(font, 15);
  text("< Back", 10, 20);
  field();
  noStroke();
  rect(0, 875, 450, 1);
  rect(150, 875, 1, 25);
  rect(300, 875, 1, 25);
  rect(450, 875, 1, 25);
  stroke(#0AAA36);
  fill(#0AAA36);
  text("Doubles", 43, 892);
  text("Trips Right", 176, 892);
  text("Trips Left", 330, 892);
  fill(#0AAA36);  //Os
  strokeWeight(3);
  noFill();
  rect(692, 695, 15, 15);      //Offensive Line
  ellipse(724, 703, 15, 15);
  ellipse(747, 703, 15, 15);
  ellipse(675, 703, 15, 15);
  ellipse(652, 703, 15, 15);
  ellipse(699, 800, 15,15);
  theReceiver1.appearDubs();
  theReceiver2.appearDubs();
  theReceiver3.appearDubs();
  theReceiver4.appearDubs();
  runningBack1.appearDubs();//
  strokeWeight(2);
  line(692, 695, 707, 710);
  line(707, 695, 692, 710); 
  if(congrats == true){
      fill(#0AAA36);
      textFont(font, 15);
      text("Completion +100", 635 , 450); 
  }
  else if(incomplete == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Incomplete -1 Life", 620 , 450); 
  }
  else if(interception == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Interception -1 Life", 612 , 450); 
  }
  else if(sacked == true){
     fill(#0AAA36);
      textFont(font, 15);
      text("Sacked -1 Life", 640 , 450); 
  }
}

void tripsRight(){
  dubs = false;
  tripsR = true;
  tripsL = false;
  background(0);
  fill(0);
  fill(#0AAA36);
  textFont(font, 15);
  text("< Back", 10, 20);
  field();
  noStroke();
  rect(0, 875, 450, 1);
  rect(150, 875, 1, 25);
  rect(300, 875, 1, 25);
  rect(450, 875, 1, 25);
  stroke(#0AAA36);
  fill(#0AAA36);
  text("Doubles", 43, 892);
  text("Trips Right", 176, 892);
  text("Trips Left", 330, 892);
  fill(#0AAA36);       //Offensive Line
  strokeWeight(3);
  noFill();
  rect(470, 695, 15, 15);
  ellipse(502, 703, 15, 15);
  ellipse(525, 703, 15, 15);
  ellipse(453, 703, 15, 15);
  ellipse(430, 703, 15, 15);
  ellipse(477, 800, 15,15);
  theReceiver5.appearTripsR();
  theReceiver6.appearTripsR();
  theReceiver7.appearTripsR();
  theReceiver8.appearTripsR();
  runningBack2.appearTripsR();
  strokeWeight(2);
  line(470, 695, 485, 710);
  line(485, 695, 470, 710);
  
  if(congrats == true){
      fill(#0AAA36);
      textFont(font, 15);
      text("Completion +100", 635, 450); 
  }
  else if(incomplete == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Incomplete -1 Life", 620 , 450); 
  }
  else if(interception == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Interception -1 Life", 620 , 450); 
  }
   else if(sacked == true){
     fill(#0AAA36);
      textFont(font, 15);
      text("Sacked -1 Life", 640 , 450); 
  }
}

void tripsLeft(){
  dubs = false;
  tripsR = false;
  tripsL = true;
  background(0);
  fill(0);
  fill(#0AAA36);
  textFont(font, 15);
  text("< Back", 10, 20);
  field();
  noStroke();
  rect(0, 875, 450, 1);
  rect(150, 875, 1, 25);
  rect(300, 875, 1, 25);
  rect(450, 875, 1, 25);
  stroke(#0AAA36);
  fill(#0AAA36);
  text("Doubles", 43, 892);
  text("Trips Right", 176, 892);
  text("Trips Left", 330, 892);
  fill(#0AAA36);       //Offensive Line
  strokeWeight(3);
  noFill();
  rect(950, 695, 15, 15);    
  ellipse(982, 703, 15, 15);
  ellipse(1005, 703, 15, 15);
  ellipse(933, 703, 15, 15);
  ellipse(910, 703, 15, 15);
  ellipse(957, 800, 15,15);
  theReceiver9.appearTripsL();
  theReceiver10.appearTripsL();
  theReceiver11.appearTripsL();
  theReceiver12.appearTripsL();
  runningBack3.appearTripsL();
  strokeWeight(2);
  line(950, 695, 965, 710);
  line(965, 695, 950, 710); 
  
  if(congrats == true){
      fill(#0AAA36);
      textFont(font, 15);
      text("Completion +100", 635, 450); 
  }
  else if(incomplete == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Incomplete -1 Life", 620 , 450); 
  }
  else if(interception == true){
    fill(#0AAA36);
      textFont(font, 15);
      text("Interception -1 Life", 620 , 450); 
  }
   else if(sacked == true){
     fill(#0AAA36);
      textFont(font, 15);
      text("Sacked -1 Life", 640 , 450); 
  }
}

void offensiveFormations(){
  if(dubs == true){
    doubles();
  }
  if(tripsR == true){
    tripsRight();
  }
  if(tripsL == true){
    tripsLeft();
  } 
}
