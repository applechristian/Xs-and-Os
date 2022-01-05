void defensiveFormations(){
  if(dubs == true){
    strokeWeight(4);
    stroke(#FF0000);
    line(680, 685, 690, 675);
    line(680, 675, 690, 685);
    line(640, 685, 650, 675);
    line(640, 675, 650, 685);
    line(725, 685, 735, 675);
    line(725, 675, 735, 685);
    line(765, 685, 775, 675);
    line(765, 675, 775, 685);
    leftCornerCover0Dubs.appearDubsCover0();
    rightCornerCover0Dubs.appearDubsCover0();
    strongSafetyCover0Dubs.appearDubsCover0();
    safetyCover0Dubs.appearDubsCover0();
    willCover0Dubs.appearDubsCover0();
    mikeCover0Dubs.appearDubsCover0();
    samCover0Dubs.appearDubsCover0();
    
  }
  else if(tripsR == true){
    strokeWeight(4);
    stroke(#FF0000);
    line(458, 685, 468, 675);
    line(458, 675, 468, 685);
    line(418, 685, 428, 675);
    line(418, 675, 428, 685);
    line(503, 685, 513, 675);
    line(503, 675, 513, 685);
    line(543, 685, 553, 675);
    line(543, 675, 553, 685);
    leftCornerCover0TripsR.appearTripsRCover0();
   rightCornerCover0TripsR.appearTripsRCover0();
   strongSafetyCover0TripsR.appearTripsRCover0();
   safetyCover0TripsR.appearTripsRCover0();
   willCover0TripsR.appearTripsRCover0();
   mikeCover0TripsR.appearTripsRCover0();
   samCover0TripsR.appearTripsRCover0();
  }
  else if(tripsL == true){
    strokeWeight(4);
    stroke(255, 0, 0);
    line(938, 685, 948, 675);
    line(938, 675, 948, 685);
    line(898, 685, 908, 675);
    line(898, 675, 908, 685);
    line(983, 685, 993, 675);
    line(983, 675, 993, 685);
    line(1023, 685, 1033, 675);
    line(1023, 675, 1033, 685);
    leftCornerCover0TripsL.appearTripsLCover0();
   rightCornerCover0TripsL.appearTripsLCover0();
   strongSafetyCover0TripsL.appearTripsLCover0();
   safetyCover0TripsL.appearTripsLCover0();
   willCover0TripsL.appearTripsLCover0();
   mikeCover0TripsL.appearTripsLCover0();
   samCover0TripsL.appearTripsLCover0();
  }
}


void routeRanD(){
  if(dubs == true){
    strokeWeight(4);
    stroke(#FF0000);
    line(680, 685, 690, 675);
    line(680, 675, 690, 685);
    line(640, 685, 650, 675);
    line(640, 675, 650, 685);
    line(725, 685, 735, 675);
    line(725, 675, 735, 685);
    line(765, 685, 775, 675);
    line(765, 675, 775, 685);
  }
  else if(tripsR == true){
    strokeWeight(4);
    stroke(#FF0000);
    line(458, 685, 468, 675);
    line(458, 675, 468, 685);
    line(418, 685, 428, 675);
    line(418, 675, 428, 685);
    line(503, 685, 513, 675);
    line(503, 675, 513, 685);
    line(543, 685, 553, 675);
    line(543, 675, 553, 685);
  }
  else if(tripsL == true){
    strokeWeight(4);
    stroke(255, 0, 0);
    line(938, 685, 948, 675);
    line(938, 675, 948, 685);
    line(898, 685, 908, 675);
    line(898, 675, 908, 685);
    line(983, 685, 993, 675);
    line(983, 675, 993, 685);
    line(1023, 685, 1033, 675);
    line(1023, 675, 1033, 685);
  }
}
