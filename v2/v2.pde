// window size and basics
void setup(){
size(1000,600);
background(#040DB2);
stroke(255);
line(width/2, 0, width/2, height);
}

void draw(){
  
  // placement for rows
  int x = width/4;
  int y = height/10;
  // color variables
  int blue = color(0,0,255);
  int yellow = color(255,255,0);
  int grey = color(220);
  
  // size of rows
  int sizeX = (width/20)*9;
  int sizeY = (height/40)*3;
  
  // size of color rect
  int colorSize = width/40;
  
  // positionX of blue+yellow
  float blueYellowX = (width/40)*18.5;
  
  // positionX og grey
  float greyX = (width/40)*5;
  
// loops for columns
for (int i=0; i<2; i++){  
  fill(255);
  rectMode(CENTER);
  
  // loops for rows
  for( int j=0; j<8; j++){
    fill(255);
    rect(x,y, sizeX, sizeY);
    
    // blue + grey rectangles
    if (j<4){
    fill(blue);
    rect(blueYellowX ,y, colorSize,sizeY);
    fill(grey);
    rect(greyX, y, colorSize, sizeY);
    
    // yellow + grey rectangles
    }
    if (j>3){
    fill(yellow);
    rect(blueYellowX,y, colorSize,sizeY);
    fill(grey);
    rect(greyX, y, colorSize, sizeY);
    }
    y+=height/10;   
    
    // leave gap in the middle
     if (j == 3){
      y+= height/10;
      }
  }

  // second column
  x += width/4*2;
  y = height/10;
  blueYellowX = (width/40)*39;
  greyX = (width/40)*25;
  }
  noLoop();
}
