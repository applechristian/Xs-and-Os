void gameScreen(){
offensiveFormations();
defensiveFormations();
routeDrawnReceiver159();
routeDrawnReceiver2610();
routeDrawnReceiver3711();
routeDrawnReceiver4812();
routeDrawnBack123();
routeRan();
routeRan1();

}



void field(){
  fill(#0AAA36);
  noStroke();
  rect(450, 885, 1900, 1); //difficulty noStroke got rid of line so made it into skinny rects
  rect(0, 790, 1900, 1);
  rect(0, 695, 1900, 1); //line of scrimmage
  rect(0, 600, 1900, 1); //5
  rect(0, 505, 1900, 1); //10
  rect(0, 410, 1900, 1);
  rect(0, 315, 1900, 1); //20
  rect(0, 220, 1900, 1);
  rect(0, 125, 1900, 1);
  rect(0, 30, 1900, 1);
}
