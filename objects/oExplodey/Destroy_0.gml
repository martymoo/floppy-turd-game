//create poof of dust on death
var inst1 = instance_create_depth(x, y, 100, oDust);
	inst1.image_angle = -1;
	instance_create_depth(x + (random_range(-7, -2)), y + (random_range(-7, -2)), 100, oDust);	
	instance_create_depth(x + (random_range(2, 7)), y + (random_range(2, 7)), 100, oDust);