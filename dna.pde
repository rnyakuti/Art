class Particles{
  PVector loc, vel;
  float amp;
  float theta;
  
  Particles(float x, float y){
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
  }
  
  void display(){
    stroke(255, 105, 180, 200);
    strokeWeight(5);
    fill(255, 10, 10, 100);
    ellipse(loc.x, loc.y, 42, 42);
  }
}

Particles[] p1 = new Particles[42];
Particles[] p2 = new Particles[42];

void setup(){
  size(750, 750);
  background(255);
  int i = 0;
  while(i<p1.length)
  {
    p1[i] = new Particles(width/2 -100, i*42);
    i++;
  }
  i = 0;
  while(i<p2.length)
  {
    p2[i] = new Particles(width/2 +100, i*21);
    i++;
  }
}

float theta1 = 2;
float theta2 = PI;
float lindist = 110;

void draw(){
  background(255);
  float i = 0;
  int j  = 0;
  while(i<p1.length)
  {
    p1[(int) i].loc.x = map(cos(theta1 + i/9), -1, 1, 
                        width/2 - 1/(i*.1 + 1)*width/2, width/2 + 1/(i*.1 + 1)*width/2);
    p1[(int) i].display();
    j = 0;
    while(j<p1.length)
    {
      float d2 = dist(p1[(int) i].loc.x, p1[(int) i].loc.y, p2[j].loc.x, p2[j].loc.y);
      if(d2<lindist)
        line(p1[(int) i].loc.x, p1[(int) i].loc.y, p2[j].loc.x, p2[j].loc.y);
      j++;
    }
    i++;
  }
  i = 0;
  while(i<p1.length)
  {
    p2[(int) i].loc.x = map(sin(theta2 + i/5), -1, 1, width/2 - 1/(i*.1 + 1)*width/2, width/2 + 1/(i*.1 + 1)*width/2);
    p2[(int) i].display();
    j = 0;
    while(j<p2.length){
      float d1 = dist(p2[(int) i].loc.x, p2[(int) i].loc.y, p2[j].loc.x, p2[j].loc.y);
      if(d1<lindist)
        line(p2[(int) i].loc.x, p2[(int) i].loc.y, p2[j].loc.x, p2[j].loc.y);
      j++;
    }
    i++;
  }
  
  theta1 += 0.01;
  theta2 += 0.01;
  
}
