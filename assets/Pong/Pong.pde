
Joueur Joueur1 = new Joueur(); 
Joueur Joueur2 = new Joueur();

Ball Ball1 = new Ball();

Button btUnJoueur = new Button();
Button btDeuxJoueurs = new Button();
Button btRestart = new Button();
Button btSpeedLow = new Button();
Button btSpeedMedium = new Button();
Button btSpeedHardcore = new Button();

int j1;
int j2;

int currentScene;

boolean ia;

boolean[] keyz = new boolean[4];

color clickedColor;
color naturalColor;

boolean colDetect() {
    if ((Ball1.x<=(Joueur1.x + 7.5 + Ball1.rad) && Ball1.x>(Joueur1.x ) && Ball1.y<(Joueur1.y + Joueur1.taille/2) && Ball1.y>(Joueur1.y - Joueur1.taille/2) && Ball1.dx<0) || 
        (Ball1.x>=(Joueur2.x - 7.5 - Ball1.rad) && Ball1.x<(Joueur2.x ) && Ball1.y<(Joueur2.y + Joueur2.taille/2) && Ball1.y>(Joueur2.y - Joueur2.taille/2) && Ball1.dx>0)) {
		return true;
    } 
    return false;
}

void draw() {
	if (currentScene == 1) {
		drawScene1();
	} else if (currentScene == 2) { 
		drawScene2();
	} else {
		drawScene3() ;
	}
  
	
}

void keyPressed() {
	if (keyCode == ENTER) {
      Ball1.start();
    }
    if (keyCode == UP)  {
    	keyz[0] = true;
    }
    if (keyCode == DOWN)  {
    	keyz[1] = true;
    }
    if (key == '8')  {
    	keyz[2] = true;
    }
    if (key == '2')  {
    	keyz[3] = true;
    }
}
 
void keyReleased() {
    if (keyCode == UP)  {
    	keyz[0] = false;
    }
    if (keyCode == DOWN) {
    	keyz[1] = false;
    } 
    if (key == '8')  {
    	keyz[2] = false;
    }
    if (key == '2')  {
    	keyz[3] = false;
    }
}



void mousePressed() {
	if (btUnJoueur.isMouseInside() && currentScene == 1) {
		  btUnJoueur.clicked = true ;
	}
    if (btDeuxJoueurs.isMouseInside() && currentScene == 1) {
        btDeuxJoueurs.clicked = true ;
    }
    if (btRestart.isMouseInside() && currentScene ==3) {
        btRestart.clicked = true ;
    }
    if (btSpeedLow.isMouseInside() && currentScene ==2) {
        btSpeedLow.clicked = true ;

    }
    if (btSpeedMedium.isMouseInside() && currentScene ==2) {
        btSpeedMedium.clicked = true ;
    }
    if (btSpeedHardcore.isMouseInside() && currentScene ==2) {
        btSpeedHardcore.clicked = true ;
    }
}

void mouseReleased() {
	btUnJoueur.clicked = false ;
	btDeuxJoueurs.clicked = false ;
	btRestart.clicked = false ;
	
	if (btUnJoueur.isMouseInside() && currentScene == 1) {
		  btUnJoueur.unJoueur();
		  
    }
	
    if (btDeuxJoueurs.isMouseInside() && currentScene == 1) {
        btDeuxJoueurs.deuxJoueurs();
        

    }
    if (btRestart.isMouseInside() && currentScene ==3) {
        btRestart.restart();
        
    }
    if (btSpeedLow.isMouseInside() && currentScene ==2) {
        btSpeedLow.speedLow();
        btSpeedHardcore.clicked = false ;
        btSpeedMedium.clicked = false ;
    }
    if (btSpeedMedium.isMouseInside() && currentScene ==2) {
        btSpeedMedium.speedMedium();
        btSpeedHardcore.clicked = false ;
        btSpeedLow.clicked = false ;
    }
    if (btSpeedHardcore.isMouseInside() && currentScene ==2) {
        btSpeedHardcore.speedHardcore();
        btSpeedMedium.clicked = false ;
        btSpeedLow.clicked = false ;
    }
}