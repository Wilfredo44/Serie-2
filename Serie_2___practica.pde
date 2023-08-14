boolean isEllipse = true;  // Indica si se debe dibujar una elipse o un cuadrado
color currentColor;        // Color actual de la forma
color backgroundColor;    // Color de fondo

void setup() {
  size(400, 400);
  currentColor = color(random(255), random(255), random(255));
  backgroundColor = color(220);
  background(backgroundColor);
}

void draw() {
  fill(currentColor);
  if (isEllipse) {
    ellipse(mouseX, mouseY, 100, 100);
  } else {
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 100);
  }
}

void mouseClicked() {
  isEllipse = !isEllipse;  // Cambia entre elipse y cuadrado
  currentColor = color(random(255), random(255), random(255));  // Cambia el color
  background(backgroundColor);  // Cambia el color de fondo
}
