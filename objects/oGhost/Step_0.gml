if(instance_exists(oPlayer) && !instance_exists(obj_textbox)){
	var targetX = oPlayer.x;
	var targetY = oPlayer.y;
	
	x = approach(x, targetX, moveSpeed);
	y = approach(y, targetY, moveSpeed);
}

if(place_meeting(x, y, oLightGlow) || distance_to_object(oPlayer) > 150){
	sprite_index = sGhostStop1;
	moveSpeed = 0;
}else{
	sprite_index = sGhost1;
	moveSpeed = 0.1
}

if(x - oPlayer.x > 0) image_xscale = -1;
else if(x - oPlayer.x <= 0) image_xscale = 1;
