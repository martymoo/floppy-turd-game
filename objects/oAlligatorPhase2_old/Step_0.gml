//figure out direction to shoot objects at
heroDirection = point_direction(x, y, oHero.x, oHero.y);

// get direction to throw spikes... maybe don't need this?
if heroDirection>90 and heroDirection<270
{
	// image_xscale=1;
	currentDirection = 1;
}
else
{
	// image_xscale=-1;
	currentDirection = -1;
}


// walk until you hit a wall, then turn around
if (place_meeting(x + xSpeed, y, oStandable)) {
	while (!place_meeting(x + sign(xSpeed), y, oStandable)){
		x += sign(xSpeed);
	}		
	xSpeed = 0;
}

if(xSpeed = 0){ //turn around!
	xDirection = xDirection * -1;
	xSpeed = xSpeedDefault * xDirection;
}

if(xSpeed > 0){ //face the right direction!
	image_xscale = -1;
} else if (xSpeed < 0){
	image_xscale = 1;
}

x += xSpeed; 


if(spikeToss){ //throw spikes while spiketoss is on!

	if(spikePhase > 0){ // run through the spike counter, throwing spikes
		var spikeThrow = instance_create_depth(x -25, y - 14, 100, oAlligatorSpike);
		spikeThrow.xSpeed = currentDirection * -1 * spikePhase;	//spikephase determines how far it goes			
		spikePhase--;
		

	} else {
		spikeToss = false;
		spikePhase = 2;
		alarm[0] = 90;
	}

}


if(flipcrash){
	if(image_angle < 180){
		image_angle +=45;
	} else {
	image_angle = 180;
	flipcrash = false;
	alarm[1] = 180;
	}
}

if(reflip){
	if(image_angle > 0){
		image_angle -= 45;
	} else{
		image_angle = 0;
		reflip = false;
		alarm[2] = 180;
	}
}