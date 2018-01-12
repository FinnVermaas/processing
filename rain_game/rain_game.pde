int y =20;
int x=100;
void setup(){
  size(1000,800);
}
void draw(){
  if (y==800){
   y=20; 
    x = (int) random(930);
  }
  background(10,200,80);
  fill(0,10,200);
  stroke(0,10,200);
  ellipse(x,y+=10,60,60);
  //fill(126,126,126);
  //stroke(126,126,126);
  //rect(500,
  
}