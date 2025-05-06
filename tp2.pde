int posX = 0;
int posY = 0;
int incr = 1;
int posX2 = 0;
int tam = 200;
int posButton = 300;
int colButton = 255;

void setup(){
size (640, 480);

}

void draw (){

  background(255);
 
fill(255, 255, 0, colButton);
noStroke();
ellipse(posButton, 400, tam, tam);

  textSize(30);
fill(255, 0, 0);

text("Tokyo Revengers es una serie animada japonesa que sigue a Takemichi Hanagaki, un joven que viaja en el tiempo para evitar la trágica muerte de su exnovia a manos de una pandilla.", posX-250,200,tam,100);

fill(0, 0, 255);

text ("Al retroceder 12 años, intenta cambiar el rumbo de su vida y la de sus amigos desde su adolescencia. Para lograrlo, se infiltra en la peligrosa pandilla Tokyo Manji.", posX2-250,200,tam,100);

fill(0, 255, 0);

ellipse(300,posY-50,tam,100);



if(posX >=1) {
  posX++;
}

if(posX - tam >= width) {
posX2++;
}

if(posX2 - tam >= width){
  posY++;
}


}

void mouseClicked() {
  
if(dist(mouseX, mouseY, posButton, 400) < tam/2 ){
posX++;
}
if(dist(mouseX, mouseY, posButton, 400) < tam/2 ){
colButton = 0;
}
}
