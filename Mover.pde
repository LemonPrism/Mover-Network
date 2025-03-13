class Mover {


   PVector loc;
  PVector vel;
  float d;


  Mover () {
    d = 100;
   loc =  new PVector (random( 0, width),random( 0, width));
   vel = new PVector (random (-1,1), random ( 1,1)); 
  }



  void act () {
    move();
    bounceOfEdge();
  }
  void move () {
loc.add(vel);
  }


  void bounceOfEdge() {

    if ( x< 0 || x > width) vx=-vx;
    if ( y< 0 || y > height) vy=-vy;
  }



  void showBody() {
    noStroke();
    fill ( 255, 50);
    circle ( x, y, d );
  }




  void showConnections() {
    int i = 0;
    while (i < numberOfMovers) {
      float dist = dist (x, y, movers[i].x, movers[i].y);
      if (dist <= 200) {
        float a= map(dist, 0, 200, 255, 0);
        stroke (255, a);
        strokeWeight (2);
        line (x, y, movers[i].x, movers[i].y);
      }
      i++;
    }
  }
}
