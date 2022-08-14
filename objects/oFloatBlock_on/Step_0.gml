/// @description Insert description here
// You can write your code in this editor

if (steppedOn == false){
	if (image_index != 0){
		image_speed = -1;
	}
	if(image_index > 1){
	
		image_speed = 0;
		image_index = 0;
	}
}

if (disappearing == true){
 instance_change(oFloatBlock_off, true);
}

if(autoBlock){

	if (place_meeting(x, y-1, oHero)){
	 steppedOn = true;
	 //make a flashing counter 
	 if (flashCounter == 0){
	 // set an alarm
		 if alarm[1] < 1 // check if an alarm is running or not
		{
		alarm[1]=10 // if its not running enable it. 
		}

	 }
	 // set an alarm

 

	} else {
		steppedOn = false;
	}


}
