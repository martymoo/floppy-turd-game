//figure out direction to face
heroDirection = point_direction(x, y, oHero.x, oHero.y);


if heroDirection>90 and heroDirection<270 //face the hero!
{ image_xscale = -1; }
else
{ image_xscale = 1; }




if ( distance_to_object(oHero) < 28  ){
	//show a thingie
	heroNearby = true;
} else {
	heroNearby = false;
}
