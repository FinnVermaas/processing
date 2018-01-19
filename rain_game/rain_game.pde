int y =20;
int x=100;
int score=0;
void checkCatch(int x){
  if (x >mouseX && x< mouseX+100)
  score+=5;
  else if (score>0)
  score+=20;
  println("your score is now: "+score);}
void setup(){
  size(1000,750);
}
void draw(){
  if (y==800){
    checkCatch(x);
    
   y=20; 
    x = (int) random(930);
  }
  background(10,200,80);
  fill(0,10,200);
  stroke(0,10,200);
  ellipse(x,y+=10,60,60);
  fill(126,126,126);
  stroke(126,126,126);
  rect(mouseX,720,100,30);
 
  
   fill(0,0,0);
  textSize(16);
  text("score: " + score,20,20);
}