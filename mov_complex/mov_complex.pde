particle[] p;
void setup() {
  size(500, 500);
  p= new particle[2000];
  for (int i=0; i<2000; i++) {
    p[i]=new particle();
  }
  background(0);
}
void draw() {
  //background(0);
  for (particle n : p) {
    n.compute();
    n.display();
  }
  filter(BLUR);
  if (frameCount%4==0) {
    PVector a=new PVector();
    for (particle n : p) {
      a=new PVector(random(width), random(height));
      n.moveto(a, 60);
    }
  }
}
void mouseClicked() {
  PVector a=new PVector();
  for (particle n : p) {
    a=new PVector(mouseX, mouseY);
    n.moveto(a, 5);
  }
}
