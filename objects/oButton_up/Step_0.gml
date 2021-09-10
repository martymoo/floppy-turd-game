// if hero is above me, switch to small button

if(global.switchPressed = false){
	if (place_meeting(x, y-1, oHero)){
		//script_switches();
		//global.switchPressed = true;
		script_swap_instances(oButton_up, oButton_down);
		script_swap_instances(oGate_h_closed, oGate_h_open);
		script_swap_instances(oGate_v_closed, oGate_v_open);
		script_swap_instances(oSpikes_on, oSpikes_off);
		
		
		//swap blocks, maybe?
		script_swap_instances(oSwitchBlock_off, oSwitchBlock_on);
		
		//make hero hop up
		oHero.ySpeed = -2;
		
		
		if(isFlushButton){
			
			// Dialog chunk of text! 
			myText[0] = "What's that sound... oh, no, the FLUSH is starting!!!"; // line of dialog
			myTextCol[0] = [33, c_aqua, 39, c_white]; 
			myEffects[0] = [33, 1, 39, 0]; 
			mySpeaker[0] = oHero; // default to floppy
			myTextSpeed[0] = [1, 1]; // default
			myTypes[0] = 0; //0 is normal, 1 is choice
			myNextLine[0] = -1; // -1 skips
			myScripts[0] = -1; // -1 has no scripts starting
			myEmotion[0] = 2; // 0 normal, 1 happy, 2 sad

			create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			
			
			
			//start the flush!
			oFlush.flushMoving = true;
			
			
			
		}		
		
		}

}

