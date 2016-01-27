void setup(){
    size( 500, 500);
    strokeWeight( 1 );
    frameRate( 60 );

  	Joueur1.x = 20;
  	Joueur1.y = height/2;
  	Joueur1.taille = 100;
  	Joueur1.speed = 5;
    

  	Joueur2.x = width - 20;
  	Joueur2.y = height/2;
  	Joueur2.taille = 100;
  	Joueur2.speed = 5;
    

  	Ball1.x = width/2;
  	Ball1.y = height/2;
  	Ball1.dx = 0;
  	Ball1.dy = 0;
  	Ball1.speed = 75;
  	Ball1.rad = 15;
    

  	
	  btUnJoueur.w = 130;
	  btUnJoueur.h = 30;
    btUnJoueur.x = width/2 - btUnJoueur.w/2;
    btUnJoueur.y = height/2;
	  btUnJoueur.label = "UN JOUEUR";
    btUnJoueur.clicked = false;

    
    btDeuxJoueurs.w = 165;
    btDeuxJoueurs.h = 40;
    btDeuxJoueurs.x = width/2 - btDeuxJoueurs.w/2;
    btDeuxJoueurs.y = height/4;
    btDeuxJoueurs.label = "DEUX JOUEURS";
    btDeuxJoueurs.clicked = false;

    btRestart.w = 220 ;
    btRestart.h = 40 ;
    btRestart.x = width/2 - btDeuxJoueurs.w/2;
    btRestart.y = height/2;
    btRestart.label = "Refaire une petite partie";
    btRestart.clicked = false;

    btSpeedLow.w = 25 ;
    btSpeedLow.h = 30 ;
    btSpeedLow.x =  width/4 - btSpeedLow.w/2 ;
    btSpeedLow.y = height/5 ;
    btSpeedLow.label = "1";
    btSpeedLow.clicked = false;

    btSpeedMedium.w =25 ;
    btSpeedMedium.h =30 ;
    btSpeedMedium.x = width/2 - btSpeedLow.w/2;
    btSpeedMedium.y =height/5 ;
    btSpeedMedium.label = "2";
    btSpeedMedium.clicked = true;

    btSpeedHardcore.w =25 ;
    btSpeedHardcore.h =30 ;
    btSpeedHardcore.x = 3*width/4 - btSpeedLow.w/2;
    btSpeedHardcore.y =height/5 ;
    btSpeedHardcore.label = "3" ;
    btSpeedHardcore.clicked = false;

    clickedColor = color(0, 234, 255);
    naturalColor = color(0, 100,110);
    
  	currentScene = 1;

    j2 = 0 ;
    j2 = 0 ;

    for (int i = 0;i<4;i++) {
      keyz[i] = false;
    }

}  