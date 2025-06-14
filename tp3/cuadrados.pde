void cuadrados(){
 for(int i=1; i<4; i=i+1){
   rect(400+i*15,0+i*15,400-i*30,400-i*30);
 }
 
  for(int i=0; i<4; i=i+1){
   for(int j=0; j<2; j=j+1){
     for(int k=0; k<2; k=k+1)
    rect(460+i*15+j*147,60+i*15+k*148,132-i*30,132-i*30);
  }
 }
 
 if(espacio){
   for(int i=0; i<2; i=i+1){
   for(int j=0; j<2; j=j+1){
    rect(520+j*132,120+i*133,27,27);
    rect(534+j*118,134+i*119,13,13);
  }
 }
}
if(!espacio){
   for(int i=0; i<2; i=i+1){
   for(int j=0; j<2; j=j+1){
   float movimientoX1=map(mouseX,0,800,505,521);
   float movimientoX2=map(mouseX,0,800,505,534);
   float movimientoY1=map(mouseY,0,400,105,121);
   float movimientoY2=map(mouseY,0,400,105,134);
    rect(movimientoX1+j*147,movimientoY1+i*148,27,27);
    rect(movimientoX2+j*147,movimientoY2+i*148,13,13);
   }
  }
 }
 
}
