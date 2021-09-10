

switch(btn_type){
	case "left":
		//virtual_key_show(global.virtKeyLeft);
		if( keyboard_check(vk_left) ){ sprite_index = s_mobile_btn_l_down; } 
		else { sprite_index = s_mobile_btn_l; }
		break;
	case "right":
		//virtual_key_show(global.virtKeyRight);
		if( keyboard_check(vk_right) ){ sprite_index = s_mobile_btn_r_down; } 
		else { sprite_index = s_mobile_btn_r; }
		break;
	case "up":
		with (oDoor){
			if( place_meeting(x, y, oHero) ){
				//virtual_key_hide(global.virtKeyUp);				
				//virtual_key_show(global.virtKeyIn);
					if( keyboard_check(vk_up)) {
						CurrentPosX = x;
						CurrentPosY = y;
						//destroy all badguys
						instance_destroy(oSnek);
						instance_destroy();
						instance_create_layer(CurrentPosX, CurrentPosY, "Instances", oDoorClosed);	
						oHero.shrinking = true;						
					}
											
			
			
			} else {
				//virtual_key_show(global.virtKeyUp);				
				//virtual_key_hide(global.virtKeyIn);
			}
		}
		
		if( keyboard_check(vk_space) || keyboard_check(vk_up) ){ 
			sprite_index = s_mobile_btn_up_down; 

			
		} 
		else { sprite_index = s_mobile_btn_up; }
		break;


}






