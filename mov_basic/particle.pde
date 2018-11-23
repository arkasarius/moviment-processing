class particle {
  PVector pos=new PVector(0,0);
  PVector dest=new PVector(0,0);
  int steps=-1;
  particle() {
    pos.x=width/2;
    pos.y=height/2;
    dest=pos;
  }
  void display() {
    noStroke();
    fill(255,0,0);
    ellipse(pos.x, pos.y, 3, 3);
  }
  void moveto(PVector destination,int _steps) {
    dest = destination.sub(pos);
    steps=_steps;
    dest.div(steps);
    //print(dest);
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
