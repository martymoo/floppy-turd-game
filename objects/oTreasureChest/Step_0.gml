
if ( distance_to_object(oHero) < 28  ){
	//show a thingie
	heroNearby = true;
} else {
	heroNearby = false;
}

if(isOpened){
	sprite_index = sTreasureOpen; 
	myEmotion[0]	= 2; // 0 normal, 1 happy, 2 sad
	myText[0] = "Aww, it's empty"; 	
}

if (heroNearby){
		
	if( oHero.key_up ) {
		if(powerUp){
			switch(powerUpType)
			{
				case "jump":
					global.jumpPowerUp = true;
					break;
				case "slide":
					global.wallSlidePowerup = true;
					break;
				case "cutie":
					global.cutie = true
					break;
			}
		
		}
		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			
		isOpened = true; 
		
	}
	

}