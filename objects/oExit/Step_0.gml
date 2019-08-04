if(place_meeting(x, y, oPlayer) && !sdPlayed){
	audio_play_sound(sdExit, 10, false);
	sdPlayed = true;
}