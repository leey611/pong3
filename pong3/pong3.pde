Ball ball1;
Ball ball2;

int radius = 12;
float xpos= int(random(width));
  float ypos= int(random(height));
  float xspeed = 3;
  float yspeed = 2.5;
  int xdirection = 1;
  int ydirection = 1;


int pxl=100;
int pyl=250;

int pxr=400;
int pyr=250;

int l=0;
int r=0;

void setup(){
  size(500,500);
  ball1 = new Ball();
  ball2 = new Ball();
  
}

void draw(){
  background(0);
  fill(255);
  rect(pxl, pyl, 10,80);
  rect(pxr, pyr, 10,80);
  
  
  if(keyPressed && key=='q'){
    //pyl=pyl-10;
    pyl=constrain(pyl-10, 0, height);
  }
  if(keyPressed && key=='z'){
    //pyl=pyl+10;
    pyl=constrain(pyl+10, 0, height-80);
  }
  
  if(keyPressed && key=='o'){
    //pyr=pyr-10;
    pyr=constrain(pyr-10,0,height);
  }
  if(keyPressed && key=='m'){
    //pyr=pyr+10;
    pyr=constrain(pyr+10,0,height-80);
  }
  
  
  ball1.display();
  //ball1.move();
  //if (mousePressed) {
  //  ball2.display();
  //}
  
  //score
  
  //if(xpos+radius >= width){
  //  l=l+1;
  //}
  //if(xpos-radius <= 0){
  //  r=r+1;
  //}
  
  textSize(20);
  fill(255);
  text(l,20,20);
  text(r,460,20);
  
  //wintext
  if(l>=5){
    background(0);
    textSize(50);
    text("left wins", width/2, height/2);
  }
  
  if(r>=5){
    background(0);
    textSize(50);
    text("right wins", width/2, height/2);
  }
  
  //reset
  if(keyPressed && key=='g'){
    l=0;
    r=0;
  }
  
  
}
