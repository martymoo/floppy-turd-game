//Make snek go left...
xSpeed = xDirection * spd;

// Gravity!
ySpeed++;

//Detect if turdy is on a wall or not!
onTheGround = place_meeting(x, y + 1, oStandable);

//Turn in the direction I'm facing
if (xDirection != 0) image_xscale = xDirection;

if (place_meeting(x + xSpeed, y, oStandable)) {
	while (!place_meeting(x + sign(xSpeed), y, oStandable)){
		x += sign(xSpeed);
	}
	
	xDirection = xDirection * -1;
	xSpeed = 0;
}

if (place_meeting(x, y + ySpeed, oStandable)) {
	while (!place_meeting(x, y + sign(ySpeed), oStandable)){
		y += sign(ySpeed);
	}	
	
	ySpeed = 0;
}

//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	x += xSpeed;
	y += ySpeed;
}