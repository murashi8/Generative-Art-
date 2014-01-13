size(500, 300);
background(255);
strokeWeight(0.5);
smooth();
int centx = 250;
int centy = 150;
float x, y;

for (int i = 0; i<1000; i++) {
  float lastx =-999;
  float lasty =-999;
  float radiusNoise = random(10);
  float radius = 10;
   stroke(random(200),random(500),random(700),80);
   
  int startangle = int(random(3600));
  int endangle = 1440 + int (random(1440));
  int anglestep = 5 + int(random(3));
  for (float ang = startangle; ang <= endangle; ang += anglestep){
    radiusNoise += 0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise)*500) - 100;
    float rad = radians(ang);
    x = centx + (thisRadius*cos(rad));
    y = centy + (thisRadius*sin(rad));
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
  }
}
    
