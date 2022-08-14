if(knockback == false){


//if I'm falling, kill da gator
	if(other.ySpeed > 0){
		
		//I need to be above it first!
		var height = other.y - y;
				
		
			if (height < 0){
				//bounce
				other.y = y - 70;
				other.ySpeed = -5;
				
				if (gatorSpiked = false){	//only work if spikes are down					
					//squish
					audio_play_sound(snd_bonk, 1, false); // bonk sound!				
					knockback = true;
				} else {
					knockback_floppy();
				}
			
			}
		
		
	} else {
		knockback_floppy();
	}
}	

