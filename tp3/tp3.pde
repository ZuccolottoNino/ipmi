//https://youtu.be/M7MSCQbwzYs
PImage ilusion;
boolean espacio=true;

void setup () {
  size (800, 400);
  ilusion=loadImage("imagen.jpg");
}


void draw () {
  background (95, 148, 188);
  noFill();
  stroke(255);
  strokeWeight(3);
  image(ilusion,0,0,400,400);

  
  cuadrados();
  //fill(0);
  //text(mouseX+":"+mouseY,mouseX,mouseY);
}

void keyPressed(){
  if(key == ' '){
    espacio=!espacio;
  }
}
