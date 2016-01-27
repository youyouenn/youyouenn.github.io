//scene2
void drawScene2() {
	currentScene = 2;
	rectMode(CENTER);
	background(255,204,0);
	textAlign(CENTER);
	textSize(35);
	text("Vitesse", width/2, height/7);
	Joueur1.x = 20;
	Joueur2.x = width-20;
	Joueur1.drawJoueur();
	Joueur2.drawJoueur();
	btSpeedLow.drawButton();
	btSpeedMedium.drawButton();
	btSpeedHardcore.drawButton();	
	
	Ball1.drawBall();
	if (colDetect()) {
	    if (Ball1.x<width/2) {
	    	Ball1.colJoueur(((Ball1.y - Joueur1.y)*2/Joueur1.taille)*Ball1.speed,1);
	    } else {
	    	Ball1.colJoueur(((Ball1.y - Joueur2.y)*2/Joueur2.taille)*Ball1.speed,2);
	    }
	}
	Ball1.update();
	
	textSize(50);
	textAlign(CENTER);
	text(j1,50,50);
	text(j2,width-50,50);

	if (ia) {
		if (Joueur2.y<Ball1.y) {
			Joueur2.y+=Joueur2.speed;
		}
		if (Joueur2.y>Ball1.y) {
			Joueur2.y-=Joueur2.speed;
		}
	}
    
    
    
    if (keyz[0]) {
    	Joueur1.y-=Joueur1.speed;
    } else if (keyz[1]) {
        Joueur1.y+=Joueur1.speed;
      
    } 
    if (keyz[2]) {
      Joueur2.y -= Joueur2.speed;
    } else if (keyz[3]) {
      Joueur2.y += Joueur2.speed;      
    } 
	
	if (j1 == 5 || j2 == 5) {
		currentScene = 3;
	}
}