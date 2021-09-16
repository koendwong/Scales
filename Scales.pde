void setup() {
  size(800,800);
  background(100,0,150);
  noStroke();
  frameRate(5);
}

void draw() {
  for(int y = 0; y < 800; y += 40) {
    for(int x = 0; x < 800; x += 40) {
      fill((int)(Math.random()*256));
      scalesUp(x,y);
    }
  }
  for(int y = -20; y < 800; y += 40) {
    for(int x = -20; x < 800; x += 40) {
      fill((int)(Math.random()*256));
      scalesDown(x+0,y+8);
    }
  }
}

void scalesUp(int x, int y) {
  beginShape();
  vertex(x+20,y+0);
  vertex(x+0,y+40);
  vertex(x+20,y+20);
  vertex(x+40,y+40);
  endShape(CLOSE);
}
void scalesDown(int x, int y) {
  beginShape();
  vertex(x+0,y+0);
  vertex(x+20,y+40);
  vertex(x+40,y+0);
  vertex(x+20,y+20);
  endShape(CLOSE);
}
