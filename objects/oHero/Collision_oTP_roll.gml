// kock back, don't kill
		// game_restart();
		//room_restart();
		if (knockingback){
			//don't do stuff while already hit
		} else {
			knockingback = true;
			ySpeed -= 4;
			alarm[4] = 10;
		
		}
		