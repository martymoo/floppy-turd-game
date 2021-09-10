
if ( distance_to_object(oHero) < 28  ){
	//show a thingie
	heroNearby = true;
} else {
	heroNearby = false;
}

if (heroNearby){

	if( oHero.key_up ) {
		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			
		
	}

}