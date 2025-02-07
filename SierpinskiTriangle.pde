int mouseSizeX = 280;
int mouseSizeY = 520;
int triangleLength = 250;
public void setup() {
  size(800,800);
}
public void draw() {
  background(200);
  sierpinski(mouseSizeX, mouseSizeY, triangleLength);
}
public void mouseDragged() {//optional
  mouseSizeX = mouseX;
  mouseSizeY = mouseY;
  triangleLength = mouseX + mouseY;
}
public void sierpinski(int x, int y, int len) {
  if(len <= 50) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
