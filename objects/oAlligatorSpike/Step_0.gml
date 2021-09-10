//ySpeed ++; //gravity pulls the spike down
ySpeed = ySpeed + 0.5;

ySpeed = clamp(ySpeed, -30, ySpeedMax);


	if (place_meeting(x + xSpeed, y, oWall)) {
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

//rotate the spike!
image_angle += 15;

x = x + xSpeed;
y = y + ySpeed;
