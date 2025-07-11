float seguirMouse(float mouse, boolean cuadrado, boolean eje) {
  if (cuadrado && eje) return map(mouse, 0, 800, 505, 521); //Cuadrado Grande X
  if (!cuadrado && eje) return map(mouse, 0, 800, 505, 534); //Cuadrado Chico X
  if (cuadrado && !eje) return map(mouse, 0, 400, 105, 121); //Cuadrado Grande Y
  return map(mouse, 0, 400, 105, 134); //Cuadrado Chico Y
}
