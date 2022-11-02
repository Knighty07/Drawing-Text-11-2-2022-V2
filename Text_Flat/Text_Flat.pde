//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight;
String title = "Ayaka!";
PFont titleFont; 
color blue=#3390C1, resetDefaultInk=#FFFFFF;//Night Mode Friendly
//
size(500, 600); //Portrait
//Copy Display Alogorhythm
appWidth = width;
appHeight =height;
//
//Population
titleX = appWidth * 1/4;
titleY = appHeight * 1/4;
titleWidth = appWidth * 1/2;
titleHeight = appHeight * 1/6;

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
//
//Repeated Executed Code
fill(blue);
textAlign(CENTER, CENTER);
fontSize = 50;
textFont(titleFont, fontSize);
text(title, titleX, titleY, titleWidth, titleHeight );
fill(resetDefaultInk);
