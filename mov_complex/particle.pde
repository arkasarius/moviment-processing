class particle {
  PVector pos=new PVector(0,0);
  PVector dest=new PVector(0,0);
  int steps=-1;
  color c=color(255,0,0);
  particle() {
    pos.x=random(width);
    pos.y=random(height);
    dest=pos;
    c=color(random(255),random(255),random(255));
  }
  void display() {
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, 3, 3);
  }
  void moveto(PVector destination,int _steps) {
    dest = destination.sub(pos);
    steps=_steps;
    dest.div(steps);
  }
  void compute(){
    if(steps>0){
      nextStep();
    }
  }
  void nextStep(){
    pos.add(dest);
    steps--;
  }
}
