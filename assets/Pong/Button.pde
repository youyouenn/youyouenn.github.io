class Button {
	float x;
	float y;
	float w;
	float h;
	String label;
  boolean clicked;

	void unJoueur() {
      currentScene = 2 ;
      ia = true ;
    };

  void deuxJoueurs() {
  	currentScene = 2 ;
  	ia = false ;
  }

  void restart() {
    currentScene = 1 ;
    j1 = 0 ;
    j2 = 0 ;
  }

  void speedLow() {
    Ball1.speed = 55 ;
  }

  void speedMedium() {
    Ball1.speed = 75 ;
  }

  void speedHardcore() {
    Ball1.speed = 95 ;
  }
	void drawButton(){
      rectMode(CORNER);
      if (!clicked) {
		    fill(naturalColor);
      } else {
        fill (clickedColor);
      }
    	rect(x, y, w, h, 5);
    	fill(0, 0, 0);
    	textSize(19);
    	textAlign(LEFT, TOP);
    	text(label, x+10, y+h/4);
	}

  void changeColor() {

  }
	boolean isMouseInside() {
		return     mouseX > x &&
               mouseX < (x + w) &&
               mouseY > y &&
               mouseY < (y + h);
	}
	
	
}