global.bossKey_01 = true; //floppy got da key


		// Dialog chunk of text! 
		myText[0] = "WOAH - I got a BOSS key!!"; // line of dialog
		myTextCol[0] = [16, c_black, 21, c_white]; 
		myEffects[0] = [16, 2, 21, 0]; 
		mySpeaker[0] = oHero; // default to floppy 
		myTextSpeed[0] = [1, 1]; // default
		myTypes[0] = 0; //0 is normal, 1 is choice
		myNextLine[0] = -1; // -1 skips
		myScripts[0] = -1; // -1 has no scripts starting
		myEmotion[0] = 0; // 0 normal, 1 happy, 2 sad

		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			


with(other){ 
	instance_destroy();	
}
	