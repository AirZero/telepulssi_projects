/**
 * Telepulssi template for Processing.
 * Use your mouse pointer to draw pixels on Telepulssi
 */

Telepulssi telepulssi;

public void settings() {
  // Telepulssi screen resolution is 40x7
  size(40, 7);
}
PImage img;
int xPos=12;
int xDir=1;
int hidastus=0;
int speak = 0;
String osto = "Ostaisin 3 salamipitsaa";
int time = 0;
int yPos = 7;
int yDir = 1;
int sec = 0;

void setup() {  
  // First set up your stuff.

  background(0);
 // img = loadImage("warrior_rend.jpg");
    
  // Initialize real Telepulssi, emulated one, or both. Pick the on you like to use
  //telepulssi = new Telepulssi(this, true, "com3"); // Preview and real hardware
  telepulssi = new Telepulssi(this, true, null); // Preview only
  //telepulssi = new Telepulssi(this, false, "/dev/ttyACM0"); // Real hardware only
  
  // Hide the original window
  surface.setVisible(false);
}

void draw() {
  // Do something fancy like rotating text
  background(0);
  //pushMatrix();
  
  //rotate(frameCount / 20.0); 
  
  //textSize(7);
  //text("Hello", 0, 0);
  //image(img, value, 0);
  
  //stroke(153);
  //rect(0, 0, 2, 2);
  
  
  
  //cube();
 //knightrider();
  //pizza();
//  man();
  //manSpeaks();
  //text1();
//clock();
//clockRotating();
clockSlider();  
//  knightClock();
  
  /*
  if(hidastus<2){
    
    text1();
    hidastus++;
  }
  else{
      hidastus=0;
  }
  */
  
  //pizza();  
  
  /*
  rect(xPos-21, -4, 1, 7);
  xPos=xPos+xDir;
  if (xPos>width-3 || xPos<3)
  {
    xDir=-xDir;
  }
  */

  
  //popMatrix();
  
  // Finally update the screen and preview.
  telepulssi.update();
}

void keyPressed() {
  
}

void cube() {
  translate(width*0.5, height*0.5);
  rotate(
  frameCount / 20.0);
  point(0, 0);
  stroke(153);
  rect(3, 12, 5, 5);
  
  }
  
void knightrider() {
  rect(xPos-1, -1, 1, 7);
  xPos=xPos+xDir;
  if (xPos>width-3 || xPos<3)
  {
    xDir=-xDir;
  }
}

void pizza(){
  ellipse(12, 3, 4, 4);
  ellipse(18, 3, 4, 4);
  ellipse(24, 3, 4, 4);
}

void man(){
  rect(1, 2, 1, 7);
  rect(2, 0, 1, 2);
  rect(3, 1, 1, 1);
  point(3, 6);
}

void manSpeaks(){
   rect(1, 2, 1, 7);
  rect(2, 0, 1, 2);
  
  if(speak < 3){
    rect(3, 1, 1, 1);
    speak++;
  }
  else{
    speak = 0;
  }

  point(3, 6);
}

void text1(){
  textSize(8);
  text(osto, xPos, 6);
  
  /*
  if(osto.length() > 2){
    osto = osto.substring(1);
    }
   */
   xPos=xPos-xDir;
  if (xPos>width-3 || xPos<3)
 
 //   print(osto);
  {
    
    //xDir=-xDir;
  }
  if(hidastus < 3){
    
    xPos=xPos+1;
    hidastus++;
  }
 
  if(hidastus < 6){
    hidastus++;
    
  }
  
  else{
      hidastus=0;
  }
 
}

void text2(){
  textSize(8);
  text("Selvä, ottakaa vuoronumero", xPos, 6);
   xPos=xPos-xDir;
  if (xPos>width-3 || xPos<3)
  {
    //xDir=-xDir;
  }
}

void knightClock(){
  textSize(9);
  text(hour(),xPos -2, 7);
  text(":", xPos + 10, 6);
  text(minute(), xPos + 12, 7);
  text(":", xPos + 22, 6);
  text(second(), xPos + 26, 7);

  xPos=xPos+xDir;
  if (xPos>width-3 || xPos<3)
  {
    xDir=-xDir;
  }
}

void clock(){ //<>//
  textSize(9); //<>//
  text(hour(), 0, 7);
  text(":", 11, 6);
  text(minute(), 14, 7);
  text(":", 25, 6);
  text(second(), 28, 7);
}

void clockRotating(){
  
  yPos=yPos+yDir;
      //delay(500);
      
  rotate(
    frameCount / 10.0);   
    textSize(9);
    text(hour(), 0, 7);
    text(":", 11, 6);
    text(minute(), 14, 7);
    text(":", 25, 6);
    text(second(), 28, 7);
     //yPos=0;
     
/*
  if(yPos<28){
      rotate(
     frameCount / -10.0);
         textSize(9);
    text(hour(), 0, 7);
    text(":", 11, 6);
    text(minute(), 14, 7);
    text(":", 25, 6);
    text(second(), 28, 7);
    
}*/
}

void clockSlider(){
  textSize(9);
  text(hour(), 0, 7);
  text(":", 12, 6);
  text(minute(), 14, 7);
  text(":", 25, 6);
  // text(second(), 24, 7);
  
      yPos=yPos+yDir;
      text(sec, 28, yPos);
      //delay(500);
      
  if (yPos>28)
  {
     // yDir=-14;
     yPos=0;
     sec = second();
     
}
  if(yPos==8){
    delay(500);
    
  
  
  }

}