//setting up variables
//image variables
PImage alarmIcon;
PImage callIcon;
PImage doorClosingIcon;
PImage doorOpeningIcon;
PImage braille1;
PImage braille2;
PImage braille3;
PImage braille4;
PImage upArrow;
PImage downArrow;
PImage emergencyIndicator;
//button booleans
boolean alarmOver = false;
boolean callOver = false;
boolean cancelOver = false;
boolean openOver = false;
boolean closeOver = false;
boolean oneOver = false;
boolean twoOver = false;
boolean threeOver = false;
boolean fourOver = false;
//button positions and sizes
float alarmX = 150;
float alarmY = 850;
float alarmDiameter = 75;
float callX = 300;
float callY = 850;
float callDiameter = 75;
float cancelX = 450;
float cancelY = 850;
float cancelDiameter = 75;
float openX = 867.5;
float openY = 800;
float openDiameter = 97.5;
float closeX = 687.5;
float closeY = 800;
float closeDiameter = 97.5;
float oneX = 775;
float oneY = 618.75;
float oneDiameter = 97.5;
float twoX = 775;
float twoY = 456.25;
float twoDiameter = 97.5;
float threeX = 775;
float threeY = 293.75;
float threeDiameter = 97.5;
float fourX = 775;
float fourY = 131.25;
float fourDiameter = 97.5;
//indication colors
color alarmColor = color(0);
color callColor = color(0);
color cancelColor = color(0);
color openColor = color(0);
color closeColor = color(0);
color oneColor = color(0);
color twoColor = color(0);
color threeColor = color(0);
color fourColor = color(0);
//button pressed booleans
boolean onePressed = false;
boolean twoPressed = false;
boolean threePressed = false;
boolean fourPressed = false;
boolean emergencyPressed = false;
boolean openPressed = false;
boolean closePressed = false;
//current floor
int currentFloor = 1;
int requestedFloor = 1;
boolean inMotion = false;
float floorIndicatorY = 575;


void setup() {
  //Basic Setup
  alarmIcon = loadImage("C:/Users/jacks/Downloads/alarmIcon.png");
  alarmIcon.resize(50, 50);
  callIcon = loadImage("C:/Users/jacks/Downloads/callIcon.png");
  callIcon.resize(50,50);
  doorClosingIcon = loadImage("C:/Users/jacks/Downloads/doorClosingIcon.png");
  doorClosingIcon.resize(60,60);
  doorOpeningIcon = loadImage("C:/Users/jacks/Downloads/doorOpeningIcon.png");
  doorOpeningIcon.resize(75,75);
  braille1 = loadImage("C:/Users/jacks/Downloads/braille1.png");
  braille1.resize(200,200);
  braille2 = loadImage("C:/Users/jacks/Downloads/braille2.png");
  braille2.resize(200,200);
  braille3 = loadImage("C:/Users/jacks/Downloads/braille3.png");
  braille3.resize(200,200);
  braille4 = loadImage("C:/Users/jacks/Downloads/braille4.png");
  braille4.resize(200,200);
  upArrow = loadImage("C:/Users/jacks/Downloads/upArrow.png");
  upArrow.resize(200,300);
  downArrow = loadImage("C:/Users/jacks/Downloads/downArrow.png");
  downArrow.resize(200,300);
  emergencyIndicator = loadImage("C:/Users/jacks/Downloads/emergencyIndicator.png");
  emergencyIndicator.resize(100,100);
  size(1000, 1000);
  background(#AFADA8);
  fill(#AFADA8);
  rect(0,0, 1000, 1000);
  stroke(0);
  fill(#72B6F0);
  rect(50, 50, 500, 650);
  //Emergency Label
  fill(255,0,0);
  textSize(70);
  text("EMERGENCY", 120, 770);
  //Emergency Buttons
  stroke(0);
  fill(#AFADA8);
  ellipse(150, 850, 100, 100);
  ellipse(300, 850, 100, 100);
  ellipse(450, 850, 100, 100);
  fill(alarmColor);
  ellipse(150, 850, 80, 80);
  fill(callColor);
  ellipse(300, 850, 80, 80);
  fill(cancelColor);
  ellipse(450, 850, 80, 80);
  fill(#AFADA8);
  ellipse(150, 850, 75, 75);
  ellipse(300, 850, 75, 75);
  ellipse(450, 850, 75, 75);
  fill(0);
  textSize(20);
  text("CANCEL", 417, 858); 
  image(alarmIcon, 125, 825);
  image(callIcon, 275, 825);
  //Level Buttons
  fill(#AFADA8);
  ellipse(775, 131.25, 130, 130);
  ellipse(775, 293.75, 130, 130);
  ellipse(775, 456.25, 130, 130);
  ellipse(775, 618.75, 130, 130);
  fill(fourColor);
  ellipse(775, 131.25, 104, 104);
  fill(threeColor);
  ellipse(775, 293.75, 104, 104);
  fill(twoColor);
  ellipse(775, 456.25, 104, 104);
  fill(oneColor);
  ellipse(775, 618.75, 104, 104);
  fill(#AFADA8);
  ellipse(775, 131.25, 97.5, 97.5);
  ellipse(775, 293.75, 97.5, 97.5);
  ellipse(775, 456.25, 97.5, 97.5);
  ellipse(775, 618.75, 97.5, 97.5);
  fill(0);
  textSize(60);
  text("1", 762.5, 637.5);
  text("2", 762.5, 475.5);
  text("3", 762.5, 312.5);
  text("4", 762.5, 150.5);
  image(braille1, 840, 510.5);
  image(braille2, 840, 345.5);
  image(braille3, 840, 180.5);
  image(braille4, 840, 20);
  //Door Open/Close Buttons
  fill(#AFADA8);
  ellipse(687.5, 800, 130, 130);
  ellipse(867.5, 800, 130, 130);
  fill(closeColor);
  ellipse(687.5, 800, 104, 104);
  fill(openColor);
  ellipse(867.5, 800, 104, 104);
  fill(#AFADA8);
  ellipse(687.5, 800, 97.5, 97.5);
  ellipse(867.5, 800, 97.5, 97.5);
  image(doorClosingIcon, 658, 770);
  image(doorOpeningIcon, 830, 762);
  //floor indicator
  fill(255);
  stroke(0);
  rect(300, floorIndicatorY, 250, 75, 24, 0, 0, 24);
  fill(#72B6F0);
  textSize(30);
  text("Current Floor", 350, 625);
  //elevator operation indication (up arrow, down arrow, number)
  fill(255);
  textSize(400);
  text("1", 75, 500);
}

void draw() {
  update();
  background(#AFADA8);
  fill(#AFADA8);
  rect(0,0, 1000, 1000);
  stroke(0);
  fill(#72B6F0);
  rect(50, 50, 500, 650);
  //Emergency Label
  fill(255,0,0);
  textSize(70);
  text("EMERGENCY", 120, 770);
  //Emergency Buttons
  stroke(0);
  fill(#AFADA8);
  ellipse(150, 850, 100, 100);
  ellipse(300, 850, 100, 100);
  ellipse(450, 850, 100, 100);
  fill(alarmColor);
  ellipse(150, 850, 80, 80);
  fill(callColor);
  ellipse(300, 850, 80, 80);
  fill(cancelColor);
  ellipse(450, 850, 80, 80);
  fill(#AFADA8);
  ellipse(150, 850, 75, 75);
  ellipse(300, 850, 75, 75);
  ellipse(450, 850, 75, 75);
  fill(0);
  textSize(20);
  text("CANCEL", 417, 858); 
  image(alarmIcon, 125, 825);
  image(callIcon, 275, 825);
  //Level Buttons
  fill(#AFADA8);
  ellipse(775, 131.25, 130, 130);
  ellipse(775, 293.75, 130, 130);
  ellipse(775, 456.25, 130, 130);
  ellipse(775, 618.75, 130, 130);
  fill(fourColor);
  ellipse(775, 131.25, 104, 104);
  fill(threeColor);
  ellipse(775, 293.75, 104, 104);
  fill(twoColor);
  ellipse(775, 456.25, 104, 104);
  fill(oneColor);
  ellipse(775, 618.75, 104, 104);
  fill(#AFADA8);
  ellipse(775, 131.25, 97.5, 97.5);
  ellipse(775, 293.75, 97.5, 97.5);
  ellipse(775, 456.25, 97.5, 97.5);
  ellipse(775, 618.75, 97.5, 97.5);
  fill(0);
  textSize(60);
  text("1", 762.5, 637.5);
  text("2", 762.5, 475.5);
  text("3", 762.5, 312.5);
  text("4", 762.5, 150.5);
  image(braille1, 840, 510.5);
  image(braille2, 840, 345.5);
  image(braille3, 840, 180.5);
  image(braille4, 840, 20);
  //Door Open/Close Buttons
  fill(#AFADA8);
  ellipse(687.5, 800, 130, 130);
  ellipse(867.5, 800, 130, 130);
  fill(closeColor);
  ellipse(687.5, 800, 104, 104);
  fill(openColor);
  ellipse(867.5, 800, 104, 104);
  fill(#AFADA8);
  ellipse(687.5, 800, 97.5, 97.5);
  ellipse(867.5, 800, 97.5, 97.5);
  image(doorClosingIcon, 658, 770);
  image(doorOpeningIcon, 830, 762);
  //emergency indicator (if valid)
  if ( emergencyPressed ) {
    if (currentFloor != 4) {
      image(emergencyIndicator, 225, 50);
      fill(255, 0, 0);
      textSize(40);
      text("EMERGENCY", 330, 120);
    }
    else {
      image(emergencyIndicator, 225, 600);
      fill(255, 0, 0);
      textSize(40);
      text("EMERGENCY", 330, 670);
    }
  }
  // doors opening/closing (if valid)
  if ( openPressed ) {
    fill(255);
    textSize(40);
    text("Doors Opening...", 270, 120);
  } else if ( closePressed ) {
    fill(255);
    textSize(40);
    text("Doors Closing...", 270, 120);
  }
   //floor indicator
  fill(255);
  stroke(0);
  rect(300, floorIndicatorY, 250, 75, 24, 0, 0, 24);
  fill(#72B6F0);
  textSize(30);
  text("Current Floor", 350, floorIndicatorY + 50);
  //elevator operation indication (up arrow, down arrow, number)
  fill(255);
  textSize(400);
  if (requestedFloor == currentFloor) {
    if ( currentFloor == 1) {
      text("1", 75, 500);
      onePressed = false;
      oneColor = color(0);
    } else if ( currentFloor == 2) {
      text("2", 75, 500);
      twoPressed = false;
      twoColor = color(0);
    }
    else if ( currentFloor == 3) {
      text("3", 75, 500);
      threePressed = false;
      threeColor = color(0);
    }
    else if ( currentFloor == 4) {
      text("4", 75, 500);
      fourPressed = false;
      fourColor = color(0);
    }
  } else if (requestedFloor > currentFloor) {
    image(upArrow, 70, 200);
    if (requestedFloor == 2) {
      if (floorIndicatorY > 430) {
        floorIndicatorY = floorIndicatorY - 1;
      }
      else {
        currentFloor = 2;
        twoPressed = false;
        twoColor = color(0);
        inMotion = false;
      }
    } else if (requestedFloor == 3) {
      if (floorIndicatorY > 265) {
        floorIndicatorY = floorIndicatorY - 1;
      }
      else {
        currentFloor = 3;
        threePressed = false;
        threeColor = color(0);
        inMotion = false;
      }
    } else if (requestedFloor == 4) {
      if (floorIndicatorY > 100) {
        floorIndicatorY = floorIndicatorY - 1;
      }
      else {
        currentFloor = 4;
        fourPressed = false;
        fourColor = color(0);
        inMotion = false;
      }
    }
  } else {
    image(downArrow, 70, 200);
    if (requestedFloor == 3) {
      if (floorIndicatorY < 265) {
        floorIndicatorY = floorIndicatorY + 1;
      }
      else {
        currentFloor = 3;
        threePressed = false;
        threeColor = color(0);
        inMotion = false;
      }
    } else if (requestedFloor == 2) {
        if (floorIndicatorY < 430) {
          floorIndicatorY = floorIndicatorY + 1;
        }
        else {
          currentFloor = 2;
          twoPressed = false;
          twoColor = color(0);
          inMotion = false;
        }
    } else if (requestedFloor == 1) {
        if (floorIndicatorY < 575) {
          floorIndicatorY = floorIndicatorY + 1;
        }
        else {
          currentFloor = 1;
          onePressed = false;
          oneColor = color(0);
          inMotion = false;
      }
    }
  }
}

void update() {
  alarmOver = false;
  callOver = false;
  cancelOver = false;
  openOver = false;
  closeOver = false;
  oneOver = false;
  twoOver = false;
  threeOver = false;
  fourOver = false;
  
  if ( overCircle(alarmX, alarmY, alarmDiameter) ) {
    alarmOver = true;
  } else if ( overCircle(callX, callY, callDiameter) ) {
    callOver = true;
  } else if ( overCircle(cancelX, cancelY, cancelDiameter) ) {
    cancelOver = true;
  } else if ( overCircle(openX, openY, openDiameter) ) {
    openOver = true;
  } else if ( overCircle(closeX, closeY, closeDiameter) ) {
    closeOver = true;
  } else if ( overCircle(oneX, oneY, oneDiameter) ) {
    oneOver = true;
  } else if ( overCircle(twoX, twoY, twoDiameter) ) {
    twoOver = true;
  } else if ( overCircle(threeX, threeY, threeDiameter) ) {
    threeOver = true;
  } else if ( overCircle(fourX, fourY, fourDiameter) ) {
    fourOver = true;
  } 
}

void mousePressed() {
  if ( alarmOver ) {
    alarmColor = color(255,0,0);
    emergencyPressed = true;
  } else if ( callOver ) {
    callColor = color(255,0,0);
    emergencyPressed = true;
  } else if ( cancelOver ) {
    alarmColor = color(0);
    callColor = color(0);
    emergencyPressed = false;
  } else if ( openOver ) {
    if (!inMotion) {
      openPressed = !openPressed;
    }
    if ( openPressed ) {
      openColor = color(255, 0, 0);
    } else {
      openColor = color(0);
    }
  } else if ( closeOver ) {
    if (!inMotion) {
       closePressed = !closePressed;
    }
    if ( closePressed ) {
      closeColor = color(255, 0, 0);
    } else {
      closeColor = color(0);
    }
  } else if ( oneOver && !emergencyPressed && !inMotion) {
    oneColor = color(255,0,0);
    requestedFloor = 1;
    onePressed = true;
    inMotion = true;
  } else if ( twoOver && !emergencyPressed && !inMotion) {
    twoColor = color(255,0,0);
    requestedFloor = 2;
    twoPressed = true;
    inMotion = true;
  } else if ( threeOver && !emergencyPressed && !inMotion) {
    threeColor = color(255,0,0);
    requestedFloor = 3;
    threePressed = true;
    inMotion = true;
  } else if ( fourOver && !emergencyPressed && !inMotion) {
    fourColor = color(255,0,0);
    requestedFloor = 4;
    fourPressed = true;
    inMotion = true;
  } 
}

boolean overCircle(float x, float y, float diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
