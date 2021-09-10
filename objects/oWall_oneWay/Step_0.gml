//make wall standable, only if Floppy is above it!!
if( instance_exists(oHero) ){
	if (oHero.bbox_bottom > y || oHero.key_down) {
		mask_index = -1;
	} else {
		mask_index = sWall_oneWay;
	}
}