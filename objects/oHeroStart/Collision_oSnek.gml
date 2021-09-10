	//if I'm falling, kill da snek
	if(ySpeed > 0){
		
		//I need to be above it first!
		var height = y - other.y;
		
		if (height < 0){
			//bounce
			ySpeed = -5;
			
			//squish
			with(other){
				instance_destroy();
			}
		}	
		
	} else {
		// game_restart();
		room_restart();
	}
	
show_debug_message("contact w/ snek");
