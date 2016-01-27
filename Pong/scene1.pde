// scene1
void drawScene1() {
	rectMode(CORNER);
	currentScene = 1;
	background(56);
	btUnJoueur.drawButton();
	btDeuxJoueurs.drawButton();
	textAlign(CENTER);
	text("Commandes :", width/2, btUnJoueur.y+height/7 );
	text("Lancer la balle : ENTER", width/2, btUnJoueur.y+2*height/9 );
	text("Joueur 1: flèches haut/bas", width/2, btUnJoueur.y+3*height/9 );
	text("Joueur 2: flèches 8/2", width/2, btUnJoueur.y+4*height/9 );

}