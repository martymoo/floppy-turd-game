/// @description Insert description here
// You can write your code in this editor

//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	if(onTheGround){
		ySpeed = -8;
	}
}

//reset alarm
alarm[0] = 2*room_speed;