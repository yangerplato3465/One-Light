if(instance_exists(oPlayer)){
	var targetX = oPlayer.x;
	var targetY = oPlayer.y;
	
	x = approach(x, targetX, moveSpeed);
	y = approach(y, targetY, moveSpeed);
}

if(place_meeting(x, y, oLightGlow)){
	sprite_index = sGhostStop1;
	moveSpeed = 0;
}else{
	sprite_index = sGhost1;
	moveSpeed = 0.05
}

if(x - oPlayer.x > 0) image_xscale = -1;
else if(x - oPlayer.x <= 0) image_xscale = 1;
