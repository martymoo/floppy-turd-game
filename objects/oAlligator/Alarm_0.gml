/// @description Drop an egg!!
//Wrapper - pause everything if dialog is on!

if(global.dialogPause == 0 && global.shake == false){

	if(instance_number(oSnek) < 3){ //stop spawning sneks after 3!

		instance_create_depth(x, y + 32, 100, oEgg); // create egg below
		walkSlow = true
	}
}



alarm[1] = 60; //set timer to turn off slow walk