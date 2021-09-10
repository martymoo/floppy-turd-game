

switch(keyColor){

	case "yellow" :
		if(oHero.yellowKey){
			if (place_meeting(x-1, y, oHero) ){
				 unlocking = true;
				oHero.yellowKey = false;
			} else if (place_meeting(x+1, y, oHero) ){
				 unlocking = true;
				oHero.yellowKey = false;
			}
		}
		break;

	case "blue" :
		if(oHero.blueKey){
			if (place_meeting(x-1, y, oHero) ){
				unlocking = true;
				oHero.blueKey = false;
			} else if (place_meeting(x+1, y, oHero) ){
				 unlocking = true;
				oHero.blueKey = false;
			}
		}
		break;

	case "green" :
		if(oHero.greenKey){
			if (place_meeting(x-1, y, oHero) ){
				unlocking = true;
				oHero.greenKey = false;
			} else if (place_meeting(x+1, y, oHero) ){
				 unlocking = true;
				oHero.greenwKey = false;
			}
		}
		break;

}




if(unlocking){
	if(image_index < 4){
		image_speed = 1;
	} else {
		image_index = 4;
		image_speed = 0;
		unlocking = false;
		//script_swap_instances(oGateLocked_closed, oGateLocked_open);
		switch(keyColor){
			case "yellow":
				instance_change(oGateLocked_open, true);
				break;
			
			case "green":			
				instance_change(oGateLocked_open, true);
				break;
			
			case "blue":			
				instance_change(oGateLocked_open, false);
				break;
			
		
		}
		
		
	}
}




	