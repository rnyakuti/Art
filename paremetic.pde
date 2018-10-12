//multiplex motion

//the equations [parametric equations]
//y = 5x
//x = 5t
//y = 3t + 3

//method for x and y coordinate//pollar coordinate equations
static final int n = 10;
float t;

void setup()
{
  background(20);
  size(500, 500);
}
void draw()
{
  background(20);
  stroke(255);
  strokeWeight(5);
  translate(width/2, height/2);
  int i  = 0;
  while(i < n)
  {
    line(x1(t + i),y1(t + i),x2(t + i),y2(t + i));
    i++;
  }
  t+=0.3;
}
float x1(float t)
{
  
  return sin(t/10) * 100 + sin(t/20) * 20;
}

float y1(float t)
{
  
  return tan(t / 10) * 100 + sin (t/42) * 12;
}
float x2(float t)
{
  
  return sin(t/10) * 100 + sin(t/40) * 40;
}

float y2(float t)
{
  
  return cos(t / 10) * 100 + sin (t/84) * 24;
}
