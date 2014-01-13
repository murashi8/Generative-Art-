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
  float radiusNoise = random(1000);
  float radius = random(1000);
   stroke(random(3000),random(500),random(700),800);
   
  int startangle = int(random(360));
  int endangle = 0 + int (random(14400));
  int anglestep = 5 + int(random(30));
  for (float ang = startangle; ang <= endangle; ang += anglestep){
    radiusNoise += random(100);
    radius += 0.05;
    float thisRadius = radius + (noise(radiusNoise)*50) - 100;
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
    
