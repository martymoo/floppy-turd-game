// if hero is above me, switch to small button

if(global.switchPressed = false){
	if (place_meeting(x, y-1, oHero)){
		//script_switches();
		//global.switchPressed = true;
		script_swap_instances(oButton_up_no, oButton_down_no);
		script_swap_instances(oGate_h_closed, oGate_h_open);
		script_swap_instances(oGate_v_closed, oGate_v_open);
		script_swap_instances(oSpikes_on, oSpikes_off);
		
		
		//swap blocks, maybe?
		script_swap_instances(oSwitchBlock_off, oSwitchBlock_on);
		
		//make hero hop up
		oHero.ySpeed = -2;
		
		
		if(isFlushButton){
			oFlush.flushMoving = true;
		}		
		
		}

}

