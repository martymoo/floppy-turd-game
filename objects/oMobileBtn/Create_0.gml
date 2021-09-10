depth = -1001;

//gesture_drag_time(0.01); // set drag time low to detect continuous tap

buttonPosX = x - (sprite_get_width(sprite_index) / 2);
buttonPosY = y - (sprite_get_height(sprite_index) / 2);



switch(btn_type){

	case "left":
		sprite_index = s_mobile_btn_l;
		global.virtKeyLeft = virtual_key_add(buttonPosX, buttonPosY, sprite_get_width(sprite_index), sprite_get_height(sprite_index), vk_left);				
		break;

	case "right":
		sprite_index = s_mobile_btn_r;
		global.virtKeyRight = virtual_key_add(buttonPosX, buttonPosY, sprite_get_width(sprite_index), sprite_get_height(sprite_index), vk_right);				
		break;

	case "up":
		sprite_index = s_mobile_btn_up;
		global.virtKeyUp = virtual_key_add(buttonPosX, buttonPosY, sprite_get_width(sprite_index), sprite_get_height(sprite_index), vk_space);				
		global.virtKeyIn = virtual_key_add(buttonPosX, buttonPosY, sprite_get_width(sprite_index), sprite_get_height(sprite_index), vk_up);	
		break;


}

