getInput();

//show tooltip
if(place_meeting(x, y + 10, oPlayer) || place_meeting(x, y - 10, oPlayer)){
	if(oPlayer.keyCount > 0 && !tipCreated){
		instance_create_layer(x + 8, y - 16, "System", oToolTip);
		tipCreated = true;
	}else if(oPlayer.keyCount <= 0 && !tipCreated){
		instance_create_layer(x + 8, y - 16, "System", oKeyTip);
		tipCreated = true;
	}
}else{
	/*if(instance_exists(oKeyTip)) instance_destroy(oKeyTip);
	if(instance_exists(oToolTip)) instance_destroy(oToolTip);*/
	tipCreated = false;
}

if(open){
	image_alpha = approach(image_alpha, 0, 0.1);
	if(image_alpha == 0){
		instance_destroy(self);
	}
}

//open door  (should fix)
if(place_meeting(x, y + 10, oPlayer) || place_meeting(x, y - 10, oPlayer)){
	if(oPlayer.keyCount == 1 && action){
		audio_play_sound(sdDoorOpen, 10, false);
		oPlayer.keyCount--;
		open = true;
		if(instance_exists(oKey1)){
			if(oKey1.follow) instance_destroy(oKey1);
		}
		if(instance_exists(oKey2)){
			if(oKey2.follow) instance_destroy(oKey2);
		}
	}
	if(oPlayer.keyCount == 2 && action){
		audio_play_sound(sdDoorOpen, 10, false);
		oPlayer.keyCount--;
		open = true;
		instance_destroy(oKey1);
	}
}