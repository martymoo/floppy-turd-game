//figure out direction to face

heroDirection = point_direction(x, y, oHero.x, oHero.y);

// Bob up + down
y += shift; 

if(attackMode){
	sprite_index = sTP_attack;
} else {
	sprite_index = sTP_idle;
}


if heroDirection>90 and heroDirection<270
{
image_xscale=1;
currentDirection = 1;
}
else
{
image_xscale=-1;
currentDirection = -1;
}