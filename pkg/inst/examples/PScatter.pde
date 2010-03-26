public class PScatter extends PApplet {

  int[] x = null;
  int[] y = null;

  void setup() {
    size(300, 300);
    background(256,256,256);
    smooth();
    noLoop();
  }

  void draw() {
    if(x==null || y==null) return;

    for(int i = 0; i<x.length; i++) {
      strokeWeight(10);
      stroke(0, 0, 192);
      point(x[i], y[i]);
    }
  }

  void setXY(int[] x, int[]y) {
    this.x = x;
    this.y = y;
    background(256,256,256);
    redraw();
  }

}






