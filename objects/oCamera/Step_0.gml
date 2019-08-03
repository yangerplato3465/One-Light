if(!instance_exists(oPlayer)) exit;

var targetX = oPlayer.x; 
var targetY = oPlayer.y;

x = lerp(x, targetX, 0.1);
y = lerp(y, targetY, 0.1);

if(x < width * 0.5) x = width * 0.5;
else if(x > room_width - width * 0.5){
	x = room_width - width * 0.5;
}
if(y < height * 0.5) y = height * 0.5;
else if(y > room_height - height * 0.5){
	y = room_height - height * 0.5;
}

camera_set_view_pos(view_camera[0],  x - width * 0.5, y - height * 0.5);