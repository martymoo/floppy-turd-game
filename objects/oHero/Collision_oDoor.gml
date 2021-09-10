/// @description Insert description here
// You can write your code in this editor

 if(key_up){
	show_debug_message("door opened!"); 
	
	CurrentPosX = other.x;
	CurrentPosY = other.y;
	//destroy all badguys
	instance_destroy(oSnek);
	with(other){
				instance_destroy();
	}
	
	instance_create_layer(CurrentPosX, CurrentPosY, "Instances", oDoorClosed);
	
	shrinking = true;
	
	//alarm[0] = room_speed * 2;
	
	//other.sprite_index = sDoorClose;
	
	// object_set_visible(oHero, false);
	
 }