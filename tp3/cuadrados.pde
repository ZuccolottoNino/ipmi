void cuadrados(float x, float y, float ancho, boolean animacion){
  for (int i = 1; i < 4; i++) {
    rect(x + i*15, y + i*15, ancho - i*30, ancho - i*30);
  }

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 2; j++) {
      for (int k = 0; k < 2; k++) {
        rect(x + 60 + i*15 + j*147, y + 60 + i*15 + k*148, 132 - i*30, 132 - i*30);
      }
    }
  }

  if (animacion) {
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 2; j++) {
        rect(x + 120 + j*132, y + 120 + i*133, 27, 27);
        rect(x + 134 + j*118, y + 134 + i*119, 13, 13);
      }
    }
  } else {
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 2; j++) {
        float movimientoX1 = seguirMouse(mouseX, true, true);
        float movimientoX2 = seguirMouse(mouseX, false, true);
        float movimientoY1 = seguirMouse(mouseY, true, false);
        float movimientoY2 = seguirMouse(mouseY, false, false);
//Combinaciones para mover los cuadrados (Grande, Chico, eje X, eje Y).
        rect(movimientoX1 + j * 147, movimientoY1 + i * 148, 27, 27);
        rect(movimientoX2 + j * 147, movimientoY2 + i * 148, 13, 13);
      }
    }
  }
}
