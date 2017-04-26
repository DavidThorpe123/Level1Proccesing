
float ran = random(500);
float ran1 = random(500);
float ran2 = random(500);
float ran3 = random(500);
float ran4 = random(500);
float ran5 = random(500);
float ran6 = random(500);

void setup() {
 size(500, 500);
 background(255, 0, 0);
  
}



void draw() {
 ellipse(getWormX(15), getWormY(15), 25, 25);
 fill(0, 255, 0);
  ellipse(getWormX(20), getWormY(20), 25, 25);
   fill(0, 0, 255);
  ellipse(getWormX(25), getWormY(25), 25, 25);
   fill(0, 150, 150);
  ellipse(getWormX(30), getWormY(30), 25, 25);
   fill(150, 150, 0);
  ellipse(getWormX(35), getWormY(35), 25, 25);
   fill(150, 0, 150);
  ellipse(getWormX(40), getWormY(40), 25, 25);
  fill(150, 150, 150);
  ellipse(getWormX(45), getWormY(45), 25, 25);
   fill(150, 255, 150);
   if(mousePressed) {
     ellipse(getWormX(50), getWormY(50), 25, 25);
   fill(0, 255, 150);
   }
  makeMagical();
  
  
}
float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}