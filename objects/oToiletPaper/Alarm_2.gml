//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	attackMode = false;

	var tpThrow = instance_create_depth(x +1, y + 1, 100, oTP_roll);
	tpThrow.xSpeed = currentDirection * -2;
}

alarm[0] = 120;