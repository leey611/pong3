class Ball{
  int radius = 12;
  float xpos= random(width);
  float ypos= random(height); 
  float xspeed = 3;
  float yspeed = 2.5;
  int xdirection = 1;
  int ydirection = 1;
  float ballcolor = random(255);
  
  
  void display(){
    fill(ballcolor);
    ellipse(xpos, ypos, radius*2, radius*2);
  //}

  
  
  //void move(){
 
      xpos = xpos + ( xspeed * xdirection );
      ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width - radius  || xpos < 0 + radius) {
    xdirection = xdirection * -1;
  }
  if (ypos > height - radius || ypos < 0 + radius) {
    ydirection = ydirection * -1;
  }
  //ball bounce puddles
  if (xpos - radius< pxl + 10 && xpos +radius > pxl && ypos -radius< pyl +80 && ypos +radius > pyl){
    xdirection *= -1;
    ydirection *= -1;
  }
  
  if(xpos + radius >pxr && xpos -radius < pxr +10 && ypos +radius > pyr && ypos -radius < pyr + 80){
    xdirection *= -1;
    ydirection *=-1;
  }
  
  //ball tapped puddles
  if (xpos - radius== pxl + 10 || xpos +radius == pxl || ypos -radius == pyl +80 || ypos +radius == pyl){
    ballcolor = 255;
  }else{
    ballcolor = random(255);
  }
  
  if(xpos + radius == pxr || xpos -radius == pxr +10 || ypos +radius == pyr || ypos -radius == pyr + 80){
    ballcolor = 255;
  }else{
    ballcolor = random(255);
  }
  
  if(xpos+radius >= width){
    l=l+1;
  }
  if(xpos-radius <= 0){
    r=r+1;
  }
  
  //if (ypos < pyl +80 && ypos zzzzqzx> pyl){
  //  ydirection *= -1;ooomppo
  //}
  
  //if(ypos > pyr && ypos < pyr + 80){
  //  ydirection *=-1;
  //}
  

  //ball
  //fill(255);
  //ellipse(xpos, ypos, radius*2, radius*2);
  //}
  
}
}
