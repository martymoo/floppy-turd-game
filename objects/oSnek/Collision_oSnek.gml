//bounce off other sneks, maybe?

//bounce version
	if(ySpeed > 0){
		
		//I need to be above it first!
		var height = y - other.y;
		
		if (height < 0){
			//bounce
			ySpeed = -5;
			
			
		}
		
		
	} 
	else {
	xDirection = xDirection * -1;
	

}

//if they hit side-to-side

