int posX = 0;
int posY = 0;
int incr = 1;
int posX2 = 0;
int postxt = 100;
int posImg = 0;
int posImg2 = 0;
int posImg3 = 0;
int posImg4 = 0;
int posImg5 = 0;
int posImg6 = 0;
int tamtxt = 1;
int timertxt = 1;
int invtxt = 255;
int invtxt1 = 0;
int tam = 400;
//boton iniciar
int tamButton = 150;
int posButton = 300;
int colButton = 255;
//boton reiniciar
int tamButton1 = 150;
int posButton1 = 500;
int posButtonY1 = 100;
int colButton1 = 255;
//imagenes y fuentes
PFont miFuente1;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;


void setup() {
  size (640, 480);

  miFuente1 = loadFont("fuente1.vlw");
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  imagen5 = loadImage("imagen5.jpeg");
  imagen6 = loadImage("imagen6.jpg");
}


void draw () {

  background(255);

  //Pantalla 0

  image (imagen1, posImg, 0, 640, 480);

  //Boton
  fill(255, 255, 0, colButton);
  noStroke();
  ellipse(posButton, 400, tamButton, tamButton);

  fill(0, colButton);
  textFont (miFuente1);
  text ("Iniciar", posButton-60, 410);


  //If 1
  if (posX >=1) {
    posX++;
    posImg = 1000;
    image (imagen2, posImg2, 0, 640, 480);
  }
  //If 2
  if (posX - tam >= width) {
    posX2--;
    posImg2 = 1000;
    image (imagen3, posImg3, 0, 640, 480);
  }
  //If 3
  if (posX2 - tam + 150 <= width-width*3) {
    posY++;
    posImg3 = 1000;
    image(imagen4, posImg4, 0, 640, 480);
  }

  //If 4
  if (posY - tam >=height) {
    tamtxt ++;
    image (imagen5, posImg5, 0, 640, 480);
  }
  if (tamtxt >= 30) {
    tamtxt = 30;
    timertxt ++;
  }

  //If 5
  if (timertxt >= 200) {
    invtxt = 0;
    invtxt1 ++;
  }

  //If 6
  if (invtxt1 >= 300) {
    posImg5 = 1000;
    image (imagen6, posImg6, 0, 640, 480);
  }
  //Pantalla 1

  textSize(30);
  fill(0, 0, 0);

  text("Tokyo Revengers es una serie animada japonesa que sigue a Takemichi Hanagaki, un joven que viaja en el tiempo para evitar la trágica muerte de su exnovia a manos de una pandilla.", posX-400, 200, 400, 250);


  //Pantalla 2
  fill(255, 255, 255);

  text ("Al retroceder 12 años, intenta cambiar el rumbo de su vida y la de sus amigos desde su adolescencia. Para lograrlo, se infiltra en la peligrosa pandilla Tokyo Manji.", posX2+700, 200, 400, 200);

  //Pantalla 3
  fill(0, 0, 0);

  text("Al hacerlo pone en riesgo su vida pero logra cambiar algunas cosas en el presente, como la muerte de su exnovia y la de su hermano.", 200, posY-400, tam, 200);

  //Pantalla 4

  fill (255, 0, 0, invtxt);
  textSize(tamtxt);
  text("Sin embargo sus seres queridos acaban muriendo de otra manera y debido a eso Takemichi vuelve al pasado para evitar una pelea entre dos pandillas que marcaria el rumbo de varios personajes.", 100, 100, 500, 400);

  //pantalla 5
  fill (255, 0, 0, invtxt1);
  text("Logra detener la pelea y vuelve a salvar a sus amigos, pero ese no era el fin... Las pandillas se salieron con la suya igualmente, por lo que no le quedo otra opción que convertirse en un alto mando.", postxt, 100, 500, 400);

  //pantalla final
  if (invtxt1 >= 500) {
    postxt = 1000;

    fill(255, 255, 0, colButton1);
    noStroke();
    ellipse(posButton1, posButtonY1, tamButton1, tamButton1);

    fill(0, colButton1);
    textSize (25);
    text ("Reiniciar", posButton1-70, posButtonY1+10);
  }

  //Fin
}

void mouseClicked() {

  //Boton iniciar
  if (dist(mouseX, mouseY, posButton, 400) < tamButton/2 ) {
    posX++;
    colButton = 0;
  }

  //Boton reiniciar

  if (dist(mouseX, mouseY, posButton1, posButtonY1) < tamButton1/2 ) {
    colButton1 = 0;
    posX = 0;
    posY = 0;
    incr = 1;
    posX2 = 0;
    postxt = 100;
    posImg = 0;
    posImg2 = 0;
    posImg3 = 0;
    posImg4 = 0;
    posImg5 = 0;
    posImg6 = 0;
    tamtxt = 1;
    timertxt = 1;
    invtxt = 255;
    invtxt1 = 0;
    tam = 400;
    tamButton = 150;
    posButton = 300;
    colButton = 255;

    tamButton1 = 150;
    posButton1 = 500;
    posButtonY1 = 100;
    colButton1 = 255;
  }
}
