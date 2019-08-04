/// @description Insert description here
// You can write your code in this editor
if(!dialogueActive){
	if(place_meeting(x,y, oPlayer)){
		create_textevent(
			myTxt,
			1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1
		);
		dialogueActive = 1
	}
}