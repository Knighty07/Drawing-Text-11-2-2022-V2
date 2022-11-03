//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "Ayaka!", footer = "Ayato!";
PFont titleFont; 
color blue=#3390C1, green=#11B98E, hydro=#0051D8, red=#C93A16, resetDefaultInk=#FFFFFF;//Night Mode Friendly
//
void setup() {}//End setup
//
void draw() {}//End draw
//
void keypressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
size(500, 600); //Portrait
//Copy Display Alogorhythm
appWidth = width;
appHeight =height;
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
//
//Repeated Executed Code
fill(blue );
textAlign(CENTER, CENTER);
fontSize = 50;
textFont(titleFont, fontSize);
text(title, titleX, titleY, titleWidth, titleHeight );
fill(hydro);
text(footer, footerX, footerY, footerWidth, footerHeight ); 
fill(resetDefaultInk);
