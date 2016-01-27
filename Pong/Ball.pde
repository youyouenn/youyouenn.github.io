class Ball {

	float speed;
	float x;
    float y;
    float dx;
    float dy;
    float rad;
    

	void drawBall() {
    fill(0);
    ellipse(x, y,rad,rad);
    }

	void start() {

		float r= random(0,1);
		int ra;
		if (r<0.5) {
			ra = -1 ;
		} else {
			ra = 1;
		}
    	dy = ra*random(speed)/10;
    	dx = sqrt(speed*speed - dy*dy)/10;
    	x = height/2;
    	y = width/2;
	}

  	void update() {
    if (x<0 ) {
    	dx = 0;
    	dy = 0;
    	x = width/2;
    	y = height/2;        
        j2 += 1;
    }    
    if (x>width) {
        dx = 0;
        dy = 0;
        x = width/2;
        y = height/2;
        j1 += 1;
        
    }
    
    if (y<7.5 || y>(height-15)) {
      	dy = -dy;
    
    } 

    x += dx;
    y += dy;
    
    }

    void colJoueur (float yR, int j) {
    	float s;
    		
    	if (j==1) {
    		s=1;
		} else {
			s=-1;
		}
    	// y doit être compris entre -speed (en-bas) et speed (en haut)
    	dy = yR/10;
    	dx = s*sqrt(speed*speed - dy*dy)/10;
    }
}

