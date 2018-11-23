particle p;
void setup(){
  size(500,500);
  p= new particle();
  background(0);
}
void draw(){
  //background(0);
  p.compute();
  p.display();
  filter(BLUR);
}
void mouseClicked() {
  PVector mouse=new PVector(mouseX,mouseY);
  p.moveto(mouse,15);

}
