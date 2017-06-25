int ballx = 600;
int bally = 250;
int paddlex = 850;
int paddly = 100;
int paddlewidth = 100;
int paddleheight = 200;
void setup() {
size(1000, 500);
background(0, 0, 0);
  
  
  
  
}
void draw() {
 background(0, 0, 0); 
 fill(0, 255, 0);
 rect(paddlex, paddly, paddlewidth, paddleheight);
 fill(255, 0, 0);
 ellipse(ballx, bally, 50, 50);
  
  
  println(ballx);
  
  println(paddlex);

 if(ballx >= paddlex) {
   ballx-= 5;
 }

if(ballx != paddly) {
  ballx-=1;
}
 else {
   ballx++;
 }
  
}
void keyPressed() {
  if (key == CODED) {
  if(keyCode == UP) {
     paddly-= 5;
   }
   if(keyCode == DOWN) {
     paddly+= 5;
   }
  }
}