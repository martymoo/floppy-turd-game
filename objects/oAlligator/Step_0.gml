
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
	image_xscale = 1;
} else if (xSpeed < 0){
	image_xscale = -1;
}

if(global.dialogPause == 0){ // pause wrapper
	if(global.shake){
		// allidator don't move if shaking....
	} else {
		if(walkSlow){
			x += xSpeed * 0.125;
		} else {
			x += xSpeed;
		}
	}
}


if(bossHearts == 0 ){

	// instance_destroy(); //kill it if it's outta hearts!
	// go on to phase 2!!
	oCamera.shakeCount = 15;
	global.shake = true;
	audio_play_sound(snd_bonk, 1, false); // bonk sound!
	resetCounter--;


}

if (resetCounter == 0){
	//move on to phase 2
	room_goto(bossLevel_phase_02);
}

if (knockback == true){
	//change sprite...
	sprite_index = sGator_hit; // jump otherwise

	// if alarm 3 hasn't started, start it
	if(alarm[3] == -1){
		alarm[3] = 1; // start flash timer
	}
	
	// if alarm 3 hasn't started, start it
	if (alarm[2] == -1){
		alarm[2] = 15; //start knockback timer
	}
	
} else if(knockback == false){
	sprite_index = sGatorSmall;
	show_debug_message("should be normal sprite")
}

if (flashAlpha > 0){
	flashAlpha -= 0.25; //counts down flash on hit
}


// Make the gator roar after the room starts
if (roomStarted == true){
	if (alarm[4] == -1){ 
		alarm[4] = 1; //start the roar timer
	}	

}

// Make gator roar! 
if (gatorRoar == true){
	//image_xscale = -1; // face floppy
	//start a timer to turn it off
	show_debug_message("gator should roar");

	
	if (alarm[5] == -1){ 
		alarm[5] = 80; //start turn off roar timer, turn on spike switch
	}
	//set sprite to roar
	sprite_set_offset(sGatorRoar, 0, 30);
	sprite_index = sGatorRoar;
	
	//shake da room
	oCamera.shakeCount = 15;
	global.shake = true;
	audio_play_sound(snd_bonk, 1, false); // bonk sound!


}