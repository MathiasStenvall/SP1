class Rectangle {
    // color variables
    int paint;
 // int blue = color(0,0,255);
//  int yellow = color(255,255,0);
  int grey = color(220);
  // size color
  int colorSize = width/40;
  // positionX of blue + yellow
  float blueYellowX = (width/40)*18.5;
  // PositionX of grey
  float greyX = (width/40)*5;
  
  // column
  int positionY = height/10;
  // row
  int positionX = width/4;
  // size
  int sizeX = (width/20)*9;
  int sizeY = (height/40)*3;

  Rectangle(int column, int row, color pigment) {
    positionY += (row * (height/10));
    positionX += (column * (width/2));
    blueYellowX += (column * (width/2));
    greyX += (column * (width/2));
    paint = pigment;
  }
  
  void createRect(){
  fill(255);
  rectMode(CENTER);
  rect(positionX, positionY, sizeX, sizeY);
    fill(paint);
    rect(blueYellowX ,positionY, colorSize,sizeY);
    fill(paint);
    rect(blueYellowX, positionY, colorSize,sizeY);
    fill(grey);
    rect(greyX, positionY, colorSize, sizeY);
  }
}
