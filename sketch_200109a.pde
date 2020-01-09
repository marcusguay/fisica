import fisica.*;
FBox Lfloor, Rfloor, Net;
FCircle player1, player2;
FWorld world;
boolean wkey, akey, skey, dkey;
void setup() {   
  fullScreen(FX2D);  
  Fisica.init(this);
  world= new FWorld();
  world.setGravity(0, 900);

  Lfloor= new FBox(800, 100);
  Lfloor.setPosition(319, 850);
  Lfloor.setStatic(true);
  world.add(Lfloor);


  Rfloor= new FBox(800, 100);
  Rfloor.setPosition(1120, 850);
  Rfloor.setStatic(true);
  world.add(Rfloor);

  Net= new FBox(20, 100);
  Net.setPosition(width/2, 750);
  Net.setStatic(true);
  world.add(Net);

  player1=new FCircle(50);
  player1.setPosition(200, 700);
  world.add(player1);
}


void draw() {
  background(255);
  if (wkey) player1.addImpulse(0, -500);
  if (akey) player1.addImpulse(-50, 0); 
  if (dkey) player1.addImpulse(50, 0);
    if (skey) player1.addImpulse(0, 500);
  world.step();
  make();
  world.draw();
}

void make() {
}


public void keyPressed() {
  if (key=='a'|| key=='A') akey = true;
  if (key=='d'|| key=='D') dkey = true;
  if (key=='s'|| key=='S') skey = true;
  if (key=='w' 
    || key=='W') wkey = true;
}


public void keyReleased() {
  if (key=='a'|| key=='A') akey = false;
  if (key=='d'|| key=='D') dkey = false;
  if (key=='s'|| key=='S') skey = false;
  if (key=='w'|| key=='W') wkey = false;
}
