//room transition
if(doTransition){
	if(room != targetRoom) {
		transitionAlpha += 0.05;
		if(transitionAlpha >= 1) {
			room_goto(targetRoom);
		}
	}else{
		transitionAlpha -= 0.05;
		if(transitionAlpha <= 0) doTransition = false;
	}
	
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

//death
if(deathFade){
	with(oPlayer){
		if(death){
			oGame.transitionAlpha += 0.05;
			if(oGame.transitionAlpha >= 1) {
				room_restart();
			}
		}else{
			oGame.transitionAlpha -= 0.05;
		}
	}
	if(transitionAlpha <= 0) deathFade = false;
	
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

