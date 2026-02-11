/* Ce fichier permet de créer le toit d'un tour de façon pyramidale */

//Fonction qui dessine un toit
void dessinerToit(float largeurTour, int nbEtages, float hauteurBrique) {
  float baseToit = largeurTour;

  pushMatrix();
  translate(0, -nbEtages * hauteurBrique, 0);
  fill(80, 120, 100);
  stroke(80, 20, 20);
  dessinerPyramide(baseToit, HAUTEUR_TOIT);
  popMatrix();
}


//Dessin d'une pyramide (toit)
void dessinerPyramide(float largeurBase, float hauteur) {
  float half = largeurBase / 2.0;

  // Faces triangulaires
  beginShape(TRIANGLES);
  // Face Avant
  vertex(-half, 0, half);
  vertex(half, 0, half);
  vertex(0, -hauteur, 0);
  // Face Arrière
  vertex(-half, 0, -half);
  vertex(half, 0, -half);
  vertex(0, -hauteur, 0);
  // Face Droite
  vertex(half, 0, -half);
  vertex(half, 0, half);
  vertex(0, -hauteur, 0);
  // Face Gauche
  vertex(-half, 0, -half);
  vertex(-half, 0, half);
  vertex(0, -hauteur, 0);
  endShape();

  // Base carrée
  beginShape(QUADS);
  vertex(-half, 0, -half);
  vertex(half, 0, -half);
  vertex(half, 0, half);
  vertex(-half, 0, half);
  endShape();
}
