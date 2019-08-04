getInput();

if(control){
	xx = right - left;
	yy = down - up;

	xSpeed = xx * accell;
	ySpeed = yy * accell;

	//Horizontal movement
	if(place_meeting(x + xSpeed, y, oParentSolid)){
		while(!place_meeting(x + sign(xSpeed), y, oParentSolid)){
			x += sign(xSpeed);
		}
		xSpeed = 0;
	}
	x += xSpeed;

	//Vertical movement
	if(place_meeting(x, y + ySpeed, oParentSolid)){
		while(!place_meeting(x, y + sign(ySpeed), oParentSolid)){
			y += sign(ySpeed);
		}
		ySpeed = 0;
	}
	y += ySpeed;
}
//Sprite
if((xx !=0 || yy != 0) && !death){
	sprite_index = sPlayerRun;
	if(animationHitFrame(1) || animationHitFrame(5)){
		audio_play_sound(sdFootStep, 5, false);
	}
}else{
	if(!death)
	sprite_index = sPlayerIdle;
}

if(xSpeed > 0){
	image_xscale = 1;
}else if(xSpeed < 0){
	image_xscale = -1;
}

//key
if(place_meeting(x, y, oKey1) && !oKey1.follow){
	keyCount++;
	audio_play_sound(sdPickUp, 10, false);
}

if(place_meeting(x, y, oKey2) && !oKey2.follow){
	keyCount++;
	audio_play_sound(sdPickUp, 10, false);
}

//exit transitions
var warp = instance_place(x, y, oExit);
if(warp != noone){
	with(oGame){
		targetRoom = warp.targetRoom;
		doTransition = true;
	}
}

//Death
if(place_meeting(x, y, oGhost) && sprite_index != sPlayerDeath && !damaged){
	audio_play_sound(sdDeath, 10, false);
	death = true;
	control = false;
	sprite_index = sPlayerDeath;
	image_index = 0;
	image_speed = 1;
	if(death){
		alarm[0] = 20;
		damaged = true;
	}
}

show_debug_message(death)