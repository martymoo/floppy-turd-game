/// @description Insert description here
// You can write your code in this editor
y += ySpeed;
ySpeed ++;


if(place_meeting(x,y, oHero)){
	//show_debug_message("i hit floppy");
	//room_restart();
	knockback_floppy();
}

if (place_meeting(x, y + ySpeed, oStandable)) {
	while (!place_meeting(x, y + sign(ySpeed), oStandable)){
		y += sign(ySpeed);
	}	
	
	instance_destroy();
}