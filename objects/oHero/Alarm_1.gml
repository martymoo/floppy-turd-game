// BUBBLES

var randTimer = random_range(60, 300);
var randDirection = choose(1, -1);
var inst = instance_create_depth(x, y - 8, 100, oBubbles);
if(inStream){ 
	// don't make bubbles when floating

} else {
	with (inst)
	    {
			image_angle = randDirection;
	    }

}


alarm[1] = randTimer;