// TODO - check the color of the key

with(other){
	
switch(keyColor){
	case "yellow":
		oHero.yellowKey = true;
		// Dialog chunk of text! 
		myText[0] = "I got a YELLOW key!!"; // line of dialog
		myTextCol[0] = [9, c_yellow, 15, c_white]; 
		myEffects[0] = [9, 2, 15, 0]; 
		mySpeaker[0] = oHero; // default to floppy
		myTextSpeed[0] = [1, 1]; // default
		myTypes[0] = 0; //0 is normal, 1 is choice
		myNextLine[0] = -1; // -1 skips
		myScripts[0] = -1; // -1 has no scripts starting
		myEmotion[0] = 0; // 0 normal, 1 happy, 2 sad

		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			
		
		break;
	case "blue":
		oHero.blueKey = true;
		// Dialog chunk of text! 
		myText[0] = "I got a BLUE key!!"; // line of dialog
		myTextCol[0] = [9, c_aqua, 13, c_white]; 
		myEffects[0] = [9, 2, 13, 0]; 
		mySpeaker[0] = oHero; // default to floppy
		myTextSpeed[0] = [1, 1]; // default
		myTypes[0] = 0; //0 is normal, 1 is choice
		myNextLine[0] = -1; // -1 skips
		myScripts[0] = -1; // -1 has no scripts starting
		myEmotion[0] = 0; // 0 normal, 1 happy, 2 sad

		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			
		
		break;	
	case "green":
		oHero.greenKey = true;
		// Dialog chunk of text! 
		myText[0] = "I got a GREEN key!!"; // line of dialog
		myTextCol[0] = [9, c_lime, 14, c_white]; 
		myEffects[0] = [9, 2, 14, 0]; 
		mySpeaker[0] = oHero; // default to floppy
		myTextSpeed[0] = [1, 1]; // default
		myTypes[0] = 0; //0 is normal, 1 is choice
		myNextLine[0] = -1; // -1 skips
		myScripts[0] = -1; // -1 has no scripts starting
		myEmotion[0] = 0; // 0 normal, 1 happy, 2 sad

		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			


		break;
}			
	
	instance_destroy();
}





// create_dialogue([""], -1);