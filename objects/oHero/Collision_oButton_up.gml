/// @description Insert description here
// You can write your code in this editor



	//if I'm falling, push da button
	if(ySpeed > 0){
		
		//I need to be above it first!
		var height = y - other.y;
		
		if (height < 0){
			//bounce
			ySpeed = -5;
			
			//squish
			with(other){
				instance_change(oButton_down, true);
			}
		}	
		
	}