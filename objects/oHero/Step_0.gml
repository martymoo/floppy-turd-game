


//Restart game on "r"
if (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_start)))  room_restart();


/// Detect moves in different directions
key_right = rightOn || keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0);
key_left = leftOn || keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_jump = jumpOn || keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face2));
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0);

jump = key_jump;

//wall jumping delays!
wallJumpDelay = max(wallJumpDelay - 1, 0); //reduce walljump delay
if (wallJumpDelay == 0){

	//calc horizontal movement
	xDirection = key_right - key_left; // set direction if you're not wall jumping
	//Change speed
	xSpeed = xDirection * spd;
	//Turn in the direction I'm facing
	if (xDirection != 0) image_xscale = xDirection;	
	
} else {
	wallSlideTimer = 0; // turn off slide timer if you already jumped!
	

	
}



//Wall slide timer - let you jump after you touched a wall!
wallSlideTimer = max(wallSlideTimer -1, 0); //reduce wallslide time
if (wallSlideTimer){
	// show_debug_message(wallSlideTimer);
	
	if(jumpCounter == 1){
		jumpCounter = 0; //let me doublejump if I haven't yet
	}

	if(!onTheGround && jump && key_right){
		wallJumpDelay = wallJumpDelay_max;
		ySpeed = WallJumpVert;		
		xSpeed = wallJumpSpd;
		image_xscale = 1; // [point the right direction
		// show_debug_message("This was triggered during wallslide timer?");
		//jumpCounter += 1;
		
	}
	
	if(!onTheGround && jump && key_left){
		wallJumpDelay = wallJumpDelay_max;
		ySpeed = WallJumpVert;		
		xSpeed = -wallJumpSpd;
		image_xscale = -1; // [point the right direction
		show_debug_message("This was triggered during wallslide timer?");
		//jumpCounter += 1;
	}
	
}

//Detect if floppy is on a wall or not!
onTheGround = place_meeting(x, y + 1, oStandable);

//Detect if floppy is on a wall - enabling wall jumps!
if(global.wallSlidePowerup == true){ 
	onTheWall = place_meeting(x + 1, y, oStandable) - place_meeting(x - 1, y, oStandable);
}

//Detect if floppy is in a propeller stream
inStream = place_meeting(x, y, oWaterflow_v);

//shrink to nothing
if(shrinking){
	image_xscale =  image_xscale * .5;
	// image_yscale += 1;
}

//Change sprite styles based on action
if (onTheGround){
	jumpCounter = 0; // reset the jump counter!
	if (xDirection != 0) { 
		sprite_index = sHero_run; 
		
		// step sound, but not every second
		stepCount += 1;
		if (stepCount == 1)
		   {
		      stepCount = -15;
		      audio_play_sound(snd_step2, 1, false); // step sound!
			  p=random_range(.9,1.1);
			  audio_sound_pitch(snd_step2, p);
		   }
		
		//generate dust behind you
		var dustNumber = instance_number(oDust);
		if(dustNumber < 5){
			instance_create_depth(x, bbox_bottom - 2, 100, oDust);
		}
	}
	else { 
		stepCount = 0;
		sprite_index = sHero_idle; 
	}
	
	

	// Jump code!
	
	if (jump) {
		//Wrapper - pause everything if dialog is on!
		if(global.dialogPause == 0){
			jumpCounter += 1;
			ySpeed = -12;
			var inst = instance_create_depth(x, y - 45, 100, oBubbles);
			audio_play_sound(snd_jump, 1, false); // jump sound!
			with (inst)
			    {
					image_angle = choose(1, -1);
			    }
		}
	}
} else if (inStream){
	sprite_index = sHeroFall;
} else { // if not on the ground
	if(global.jumpPowerUp == true){
		if (jumpCounter <= 1) { // allow double-jump
		
			if(jump){
				jumpCounter += 1;
				ySpeed = -12;
				var inst = instance_create_depth(x, y - 45, 100, oBubbles);
				audio_play_sound(snd_jump, 1, false); // jump sound!
				with (inst)
				    {
						image_angle = choose(1, -1);
				    }	
			}
		}
	}
	
	if( onTheWall != 0){ // if wall sliding
		sprite_index = sHero_wallSlide;
		image_xscale = onTheWall;
	} else {
		sprite_index = sHero_jump; // jump otherwise
	}
	
	
}

//MOVEMENT
//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){

//Knockback!
if (knockingback == true) {
	
    // xSpeed = xSpeed * 0.9;
    //y -= 10;
	newXdirection = image_xscale * -1;
	xSpeed = newXdirection * 2;
	
}


if(inStream){ //when in waterflow
	
	//float up gently
	if(ySpeed > 2){
		ySpeed = ySpeed - 0.8;
	} else if (ySpeed < 2 && ySpeed > -0.7){
		ySpeed = ySpeed -.05;
		show_debug_message("Yspeed is " + string(ySpeed));
	} else if (ySpeed < -1){
		ySpeed = ySpeed + 0.5;
	}
	else {
		ySpeed += -0.8;
	}
	
	
} else if(onTheWall != 0 && ySpeed > 0){ //only jump on the wall if you're coming down
	ySpeed += grav_wallSlide; // slowly crawl down
	ySpeed = clamp(ySpeed, -3, 3); // don't go too fast...
	wallSlideTimer = 5;
	
}else {
	//ySpeed++ // move down faster
	ySpeed += grav;
}

// do a wall jump!
if(onTheWall !=0 && !onTheGround && jump){
	wallJumpDelay = wallJumpDelay_max;
	ySpeed = WallJumpVert;
		
	xSpeed = wallJumpSpd * -onTheWall;
	image_xscale = image_xscale * -1; // [point the right direction
		
}

//TODO: if you are on the wall, move opposite direction! 
// logic: if you were just on a wall, and are within 2 pixels of a wall, opposite arrow + jump will work
// goal: make it easier to wall jump. 


if (place_meeting(x + xSpeed, y, oStandable)) {
	while (!place_meeting(x + sign(xSpeed), y, oStandable)){
		x += sign(xSpeed);
	}
	xSpeed = 0;
}
// xSpeed = clamp(xSpeed, -xSpeedMax, xSpeedMax)
x += xSpeed;

if (place_meeting(x, y + ySpeed, oStandable)) {
	while (!place_meeting(x, y + sign(ySpeed), oStandable)){
		y += sign(ySpeed);
	}	
	
	ySpeed = 0;
	wallJumpSpeed = 0;
}
ySpeed = clamp(ySpeed, -ySpeedMax, ySpeedMax); //set min + max vertical speed
y += ySpeed;

// show_debug_message("Jump counter is " + string(jumpCounter));


} //close dialog pause wrapper