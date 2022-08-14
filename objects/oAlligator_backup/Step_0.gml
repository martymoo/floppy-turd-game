
// walk until you hit a wall, then turn around


if (place_meeting(x + xSpeed, y, oStandable)) {
	while (!place_meeting(x + sign(xSpeed), y, oStandable)){
		x += sign(xSpeed);
	}	
	
	xSpeed = 0;
}

if(xSpeed = 0){
	xDirection = xDirection * -1;
	xSpeed = xSpeedDefault * xDirection;
}

if(xSpeed > 0){
	image_xscale = -1;
} else if (xSpeed < 0){
	image_xscale = 1;
}


if(global.shake){
	// allidator don't move if shaking....
} else {
	if(walkSlow){
		x += xSpeed * 0.125;
	} else {
		x += xSpeed;
	}
}


if(bossHearts == 0 ){

	// instance_destroy(); //kill it if it's outta hearts!
	// go on to phase 2!!
	oCamera.shakeCount = 15;
	global.shake = true;
	audio_play_sound(snd_bonk, 1, false); // bonk sound!
	resetCounter--;

	if(alarm[2] >= 0) {
		show_debug_message("counting down timer")
	    alarm[2] = 30;
	}

}

if (resetCounter == 0){
	//move on to phase 2
	room_goto(bossLevel_phase_02);
}