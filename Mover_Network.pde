Mover [] movers;
int numberOfMovers = 50;



void setup() {
  size ( 800, 800);
  movers = new Mover [ numberOfMovers];

  int i = 0 ;
  while ( i< numberOfMovers) {
    movers[i] = new Mover();
    i++;
  }
}


void draw () {



  background ( #648BBA);
  int i = 0 ;
  while ( i < numberOfMovers) {

    movers[i].act();
    movers[i].showBody();
    movers [i].showConnections();

    i++;
  }
}
