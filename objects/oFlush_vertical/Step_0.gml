//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	if(flushMoving){
		
		 path_start(pFlushVertical, 0.5, path_action_stop, true);
		 flushMoving = false;

	}
}

if (global.dialogPause == 1){
		path_speed = 0;
	} else {
		path_speed = 0.5;
}