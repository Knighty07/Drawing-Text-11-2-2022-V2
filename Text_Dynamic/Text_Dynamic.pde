//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "Kaeya!", footer = "Diluc!";
PFont titleFont; 
color blue=#3390C1, green=#11B98E, hydro=#0051D8, red=#C93A16, resetDefaultInk=#FFFFFF;//Night Mode Friendly

//
//
void setup()
{
  size(500, 600); //Portrait
  //Copy Display Algorithm
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  appWidth = width;
  appHeight = height;
  //
  //Population
  titleX = footerX = appWidth * 1/4;
  titleY = appHeight * 1/4; 
  footerY= appHeight *3/4;
  titleWidth = footerWidth = appWidth * 1/2;
  titleHeight = footerHeight = appHeight * 1/6;
  //
  //Text Setup, single executed code
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available
  printArray(fontList); //For listing all possbile fonts to choose from
  titleFont = createFont("Calibri", 48); //Verfied the font exists in Processing.JAVA
  //
  //Tools / Create Font / Find Font / Do not press "ok", known bug
  //
  //
  //Layout or text space or typograpgical feaures 
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
}//End setup
//
void draw() {
  //Repeated Executed Code
  fill(blue );
  textAlign(CENTER, CENTER);
  fontSize = 50;
  textFont(titleFont, fontSize);
  text(title, titleX, titleY, titleWidth, titleHeight );
  fill(red);
  text(footer, footerX, footerY, footerWidth, footerHeight ); 
  fill(resetDefaultInk) ;
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
