//flash before droping

if flash {
	  // image_blend = c_yellow;
	  
	  sprite_index = sDropperFlash;
	  draw_self();
} else {
    //draw sprite normally
	// image_blend = c_white;
	sprite_index = sDropper;
	
	draw_self();
}



