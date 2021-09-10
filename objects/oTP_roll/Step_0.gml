ySpeed ++; //gravity pulls it down




//slowly shrink?
// image_xscale = image_xscale * 0.995;
// image_yscale = image_yscale * 0.995;


//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	
	// Bounce a few times, but explode when hitting a wall
	if (place_meeting(x + xSpeed, y, oStandable)) {
		while (!place_meeting(x + sign(xSpeed), y, oStandable)){
			x += sign(xSpeed);
		}
		// Destroy the object - it's done for!
		var inst1 = instance_create_depth(x, y, 100, oDust);
		inst1.image_angle = -1;
		instance_create_depth(x + (random_range(-7, -2)), y + (random_range(-7, -2)), 100, oDust);	
		instance_create_depth(x + (random_range(2, 7)), y + (random_range(2, 7)), 100, oDust);	
		instance_destroy();	
	
	}

	x = x + xSpeed;

	if (place_meeting(x, y + ySpeed, oStandable)) {
		while (!place_meeting(x, y + sign(ySpeed), oStandable)){
			y += sign(ySpeed);
		}	
		// Flip the direction!
		if( abs(ySpeed) > 0.5 && abs(ySpeed) < 1.1){
			ySpeed = 1; // make it stop bouncing
		} else {
			ySpeed = (ySpeed * -1) * 0.50;
			bounceCount += 1;
		}
	
	}

	y = y + ySpeed;

} //close wrapper for dialog