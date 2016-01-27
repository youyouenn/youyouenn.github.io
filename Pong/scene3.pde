void drawScene3() {
	rectMode(CORNER);
	currentScene = 3;
	background(56);
	btRestart.drawButton();
	textAlign(CENTER);
	text("Joueur 1: " + j1, width/2, btRestart.y+2*height/9 );
	text("Joueur 2: " + j2, width/2, btRestart.y+3*height/9 );
}
	