	//if I'm falling, kill da toiletPaper
	if(ySpeed > 0){
		
		//I need to be above it first!
		var height = y - other.y;
		
		if (height < 0){
			//bounce
			ySpeed = -5;
			
			//squish
			audio_play_sound(snd_bonk, 1, false); // bonk sound!
			with(other){
				instance_destroy();
			}
		}	
		
	} else {
		knockback_floppy();
	}
	

