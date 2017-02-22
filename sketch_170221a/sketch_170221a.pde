
int x = 20;
int y = 20;
int yy = 900;
int score = 0;
 void setup() {
  size(1000, 1000);

}

void draw() {
  background(255, 0, 0);
  ellipse(x, y, 25, 25);
  fill(0, 0, 255);
  noStroke();
  y++;
  rect (mouseX, yy, 100, 100);
checkCatch(x);
  
  if (y == 1000) {
 y = 20;
 x = (int)random(1000);
 
  }
  
}
  void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
