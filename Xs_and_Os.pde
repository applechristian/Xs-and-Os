boolean startGame = false;
boolean instructions = false;
boolean beginning = true;
boolean gameOver = false;
boolean dubs = true;
boolean tripsR = false;
boolean tripsL = false;
boolean cover0 = true;
boolean receiver1 = false;
boolean receiver2 = false;
boolean receiver3 = false;
boolean receiver4 = false;
boolean receiver5 = false;
boolean receiver6 = false;
boolean receiver7 = false;
boolean receiver8 = false;
boolean receiver9 = false;
boolean receiver10 = false;
boolean receiver11 = false;
boolean receiver12 = false;
boolean back1 = false;
boolean back2 = false;
boolean back3 = false;
boolean fiveOut159 = false;
boolean fiveOut2610 = false;
boolean fiveOut3711 = false;
boolean fiveOut4812 = false;
boolean tenOut159 = false;
boolean tenOut2610 = false;
boolean tenOut3711 = false;
boolean tenOut4812 = false;
boolean fiveIn159 = false;
boolean fiveIn2610 = false;
boolean fiveIn3711 = false;
boolean fiveIn4812 = false;
boolean tenIn159 = false;
boolean tenIn2610 = false;
boolean tenIn3711 = false;
boolean tenIn4812 = false;
boolean fade159 = false;
boolean fade2610 = false;
boolean fade3711 = false;
boolean fade4812 = false;
boolean curl159 = false;
boolean curl2610 = false;
boolean curl3711 = false;
boolean curl4812 = false;
boolean comeback159 = false;
boolean comeback2610 = false;
boolean comeback3711 = false;
boolean comeback4812 = false;
boolean post159 = false;
boolean post2610 = false;
boolean post3711 = false;
boolean post4812 = false;
boolean corner159 = false;
boolean corner2610 = false;
boolean corner3711 = false;
boolean corner4812 = false;
boolean slant159 = false;
boolean slant2610 = false;
boolean slant3711 = false;
boolean slant4812 = false;
boolean swingRight123 = false;
boolean swingLeft123 = false;
boolean hookInRight123 = false;
boolean hookInLeft123 = false;
boolean hookOutRight123 = false;
boolean hookOutLeft123 = false;
boolean texasRight123 = false;
boolean texasLeft123 = false;
boolean seamLeft123 = false;
boolean seamRight123 = false;
boolean curl;
boolean comeback;
boolean hookRight;
boolean hookLeft;
boolean congrats = false;
boolean incomplete = false;
boolean interception = false;
boolean sacked = false;
boolean canThrow = false;
boolean canThrow1 = false;
boolean ballOut = false;
float canThrowCounter;
float defenderSpeed = 2.5;
ArrayList<Football> footballs;
ArrayList<Football1> footballs1;
PVector ball1;
PVector ball2;
PVector ball3;
PVector ball4;
PVector ball5;
PVector ball6;
PVector ball7;


Click click = new Click();
//Click1 click1 = new Click1();
int c;
int a;
int f;
int b;
int p = 1;
int j = 1;
int score;
int highScore = 0;;
int lives = 5;



//runing back right, left and straight (receiver class)
PFont font;
Receiver theReceiver1;
Receiver theReceiver2;
Receiver theReceiver3;
Receiver theReceiver4;
Receiver runningBack1;

Receiver theReceiver5;
Receiver theReceiver6;
Receiver theReceiver7;
Receiver theReceiver8;
Receiver runningBack2;

Receiver theReceiver9;
Receiver theReceiver10;
Receiver theReceiver11;
Receiver theReceiver12;
Receiver runningBack3;

Defender leftCornerCover0Dubs;
Defender rightCornerCover0Dubs;
Defender strongSafetyCover0Dubs;
Defender safetyCover0Dubs;
Defender willCover0Dubs;
Defender mikeCover0Dubs;
Defender samCover0Dubs;

Defender leftCornerCover0TripsR;
Defender rightCornerCover0TripsR;
Defender strongSafetyCover0TripsR;
Defender safetyCover0TripsR;
Defender willCover0TripsR;
Defender mikeCover0TripsR;
Defender samCover0TripsR;

Defender leftCornerCover0TripsL;
Defender rightCornerCover0TripsL;
Defender strongSafetyCover0TripsL;
Defender safetyCover0TripsL;
Defender willCover0TripsL;
Defender mikeCover0TripsL;
Defender samCover0TripsL;

void setup(){
  size (1400, 900);
  background(0);
  font = loadFont("DialogInput.bold-48.vlw");
  theReceiver1 = new Receiver(185, 703, 3, 3);
  theReceiver2 = new Receiver(395, 730, 3, 3);
  theReceiver3 = new Receiver(1005, 730, 3, 3);
  theReceiver4 = new Receiver(1215, 703, 3, 3);  
  runningBack1 = new Receiver(699, 845, 3, 3);
 
  theReceiver5 = new Receiver(204, 703, 3, 3);
  theReceiver6 = new Receiver(750, 730, 3, 3);
  theReceiver7 = new Receiver(975, 730, 3, 3);
  theReceiver8 = new Receiver(1220, 703, 3, 3);         
  runningBack2 = new Receiver(477, 845, 3, 3);
  
  theReceiver9 = new Receiver(180, 703, 3, 3);
  theReceiver10 = new Receiver(425, 730, 3, 3);
  theReceiver11 = new Receiver(650, 730, 3, 3);     
  theReceiver12 = new Receiver(1196, 703, 3, 3);     
  runningBack3 = new Receiver(957, 845, 3, 3);
  
  leftCornerCover0Dubs = new Defender(180, 680, 2.5 , 2.5);
  rightCornerCover0Dubs = new Defender(1210, 680, 2.5, 2.5);
  strongSafetyCover0Dubs = new Defender(1000, 680, 2.5, 2.5);
  safetyCover0Dubs = new Defender(687, 580, 2.5, 2.5);
  willCover0Dubs = new Defender(660, 630, 2.5, 2.5);
  mikeCover0Dubs = new Defender(745, 630, 2.5, 2.5);
  samCover0Dubs = new Defender(390, 680, 2.5, 2.5);
  
  leftCornerCover0TripsR = new Defender(199, 680, 2.5 , 2.5);
  rightCornerCover0TripsR = new Defender(1215, 680, 2.5, 2.5);
  strongSafetyCover0TripsR = new Defender(970, 680, 2.5, 2.5);
  safetyCover0TripsR = new Defender(465, 580, 2.5, 2.5);
  willCover0TripsR = new Defender(438, 630, 2.5, 2.5);
  mikeCover0TripsR = new Defender(523, 630, 2.5, 2.5);
  samCover0TripsR = new Defender(745, 680, 2.5, 2.5);
  
  leftCornerCover0TripsL = new Defender(175, 680, 2.5 , 2.5);
  rightCornerCover0TripsL = new Defender(1191, 680, 2.5, 2.5);
  strongSafetyCover0TripsL = new Defender(645, 680, 2.5, 2.5);
  safetyCover0TripsL = new Defender(945, 580, 2.5, 2.5);
  willCover0TripsL = new Defender(918, 630, 2.5, 2.5);
  mikeCover0TripsL = new Defender(1003, 630, 2.5, 2.5);
  samCover0TripsL = new Defender(420, 680, 2.5, 2.5);
  
  

  
  footballs1 = new ArrayList<Football1>();
 // click1 = new Click1();
  footballs = new ArrayList<Football>();
  click = new Click();
}

void draw(){
  if(beginning == true){
     startScreen();
     instructions = false;
  }
  else if(instructions == true){
    beginning = false;
    instructionScreen();
  }
  else if(startGame == true){
    beginning = false;
    instructions = false;
    gameOver = false;
    gameScreen();
    keyPressed();
    score();
    lives();
    highScore();
    click.move();
    //click1.move1();
    move1();
    gameOver();
    for (a = footballs.size()-1; a >= 0; a --){
      Football football = footballs.get(a);
      football.move();
      football.caught();

    }
     for (b = footballs1.size()-1; b >= 0; b --){
      Football1 football1 = footballs1.get(b);
      football1.move1();    
      football1.sacked1();
      if (congrats == true || incomplete == true || interception == true || sacked == true) {
        footballs1.remove(b);
    }
     }
  }
  else if(gameOver == true){
    gameOverScreen();
  }

}
