// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

double arcStart;
double arcEnd;
double maxArcEnd;
double movement;
double speed;

void setup() {
  size(400, 400);
  arcStart = radians(180);
  arcEnd = radians(180);
  maxArcEnd = radians(360);
  movement = 0.0;
  speed = PI/60;
}

void draw() {
  background(255);
  int n = 300;
  int i = 0;
  strokeWeight(4);
  while (n >= 20) {
    arcEnd = map(sin(movement + (maxArcEnd / n * i)), -1, 1, arcStart, maxArcEnd);
    arc(200, 200, n, n, arcStart, arcEnd);
    n -= 15;
    i++;
  }
  movement += speed;
}
