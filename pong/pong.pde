import ddf.minim.*;
Minim minim; AudioSample sound;
PImage backgroundImage;
int x=30;
int direction=5;
int yd=3;
int y =300;
void setup(){
   size(1000,600);
  backgroundImage = loadImage("image.jpeg");
  backgroundImage.resize(1000,600);
 
 minim = new Minim (this);
 sound = minim.loadSample("pong.wav", 128);
}
void draw(){
 
 background(backgroundImage);
  x=x+direction;
  y=y+yd;
  fill(255,0,0);
 stroke(255,0,0);
 ellipse(x,y,30,30);
if(x>990||x<10){
 direction=-direction;
 sound.trigger();
}
if(y>590||y<10){
 yd=-yd; 
 sound.trigger();
}
}