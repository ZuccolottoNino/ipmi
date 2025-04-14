void setup() {

  colorMode(RGB) ;
  size (800, 400) ;
}

void draw() {

  background(204, 229, 255);
  smooth();
  noStroke();
  PImage mi_imagen;
  mi_imagen = loadImage ("tp1.jpg");
  image(mi_imagen, 0, 0, 400, 400);
  
  fill(165,132,102);
  rect(410,375,380,100);
  rect(450,360,300,60);
  rect(540,248,145,200);
  rect(550,230,125,200);
  rect(530,242,165,10);
  rect(525,324,175,50);
  
  fill(139,92,51);
  rect(580,265,10,20);
  rect(605,265,10,20);
  rect(630,265,10,20);
  
  fill(110,165,149);
   rect(555,220,115,10);
   rect(570,80,85,140);
   rect(560,20,20,90);
   rect(655,100,20,45);
    rect(605,65,20,45);
   ellipse(615,58,40,40);
   
   fill(92,152,134);
   triangle(580,50,595,54,598,50);
    triangle(583,40,599,47,603,44);
    triangle(592,26,603,41,608,41);
      triangle(610,21,612,38,616,39);
        triangle(630,24,620,40,624,42);
        triangle(650,40,630,45,632,49);
        triangle(655,50,633,51,633,55);
        rect(555,10,30,10);
        rect(565,5,10,10);
        
        fill(234,234,88);
        rect(565,0,15,5);
}
