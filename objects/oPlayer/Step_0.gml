getInput();

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

//Sprite
if(xx !=0 || yy != 0){
	sprite_index = sPlayerRun;
}else{
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
}

if(place_meeting(x, y, oKey2) && !oKey2.follow){
	keyCount++;
}

show_debug_message(keyCount)