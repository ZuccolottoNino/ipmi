//https://youtu.be/gtcpZPy3K38
PImage ilusion;
boolean animacion=false;

void setup () {
  size (800, 400);
  ilusion=loadImage("imagen.jpg");
}


void draw () {
  background (95, 148, 188);
  noFill();
  stroke(255);
  strokeWeight(3);
  image(ilusion, 0, 0, 400, 400);


  cuadrados(400, 0, 400, animacion);
}

void mousePressed() {
  if (mouseX < 400) { //Click en la imagen para desactivar la animación
    animacion=!animacion; //Modo activado y desactivado de la animación
  }
}
