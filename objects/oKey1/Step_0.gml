if(place_meeting(x, y, oPlayer)){
	follow = true;
}

if(follow){ ///////float toward player
	var targetX = oPlayer.x;
	var targetY = oPlayer.y - 10;
	
	if(oPlayer.image_xscale == -1){      //////always follow behind player depends on facing
		x = lerp(x, targetX + 16, 0.1);  
	}else if(oPlayer.image_xscale == 1){
		x = lerp(x, targetX - 16, 0.1);  
	}
	y = lerp(y, targetY, 0.1);
}else{
	y += floatSpeed * dir
	if(y >= bottom || y <= top) dir *= -1;
}
