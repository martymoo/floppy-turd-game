ySpeed = ySpeed + yDirection;

if (bounceCount == 0){
	if(yDirection == -1){ //zoom back up!
		y += ySpeed * 0.085;
	} else {
		y += ySpeed * 0.085; // move slowly if it hasn't bounced
	}
} else {
	y += ySpeed * 0.5; // faster on the bounce
}

//move in arc for phase 2
x += xSpeed;

if(place_meeting(x, y + ySpeed, oHero)){
	
	//check to make sure floppy is going up
	if (oHero.ySpeed != 0 && oHero.y > y ){ // floppy is going up, and is below the egg
		//show_debug_message("floppy was jumping"); 
		
		while (!place_meeting(x, y + sign(ySpeed), oHero)){
			y += sign(ySpeed);
		}
		instance_create_depth(x + (random_range(-7, -2)), y - 24, 100, oDust);	
		instance_create_depth(x + (random_range(2, 7)), y - (random_range(24, 30)), 100, oDust);
	
		audio_play_sound(snd_bonk, 1, false); // bonk sound!
		//y = y - 24;
		ySpeed = ySpeed * -1;
		yDirection = -1;

	} else if (oHero.y < y ){ // floppy is above the egg
		audio_play_sound(snd_bonk, 1, false); // bonk sound!
		instance_destroy();
		instance_create_depth(x + (random_range(-7, -2)), y - 24, 100, oDust);	
		instance_create_depth(x + (random_range(2, 7)), y - (random_range(24, 30)), 100, oDust);
	}

}

// hit the ground
if (place_meeting(x, y + ySpeed, oStandable)) {
	while (!place_meeting(x, y + sign(ySpeed), oStandable)){
		// y += sign(ySpeed); // falls too fast!
		y += sign(ySpeed * 0.085);
	}	

if (bounceCount != 0) { //after bouncing once, explode into snek
	instance_destroy();
	instance_create_depth(x, y - 5, 100, oSnek); // create droplet below
} 

if (bounceCount == 0) {
	ySpeed = (ySpeed * -1) * 0.2; //bounce it!

	// bounce
	bounceCount ++;
}


	
}