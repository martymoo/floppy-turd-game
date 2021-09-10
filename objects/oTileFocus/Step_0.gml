/// @description Insert description here
// You can write your code in this editor

/// Detect moves in different directions
key_right = keyboard_check_released(ord("D")) || keyboard_check_released(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0);
key_left = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_jump = keyboard_check_released(vk_space) || (gamepad_button_check_released(0, gp_face2));
key_up = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_down = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0);

if(global.dialogPause == 0){ //halt movement if dialogue is up

	if(key_right){
		//check to see if there is a horizontal connector!
		if(place_meeting(x + 18,y, oConnectorH)){
			//advance to next square
			audio_play_sound(snd_moveselect, 1, false); // move sound!
			x += 32;
		}
	}

	if(key_left){
		//check to see if there is a horizontal connector!
		if(place_meeting(x - 18,y, oConnectorH)){
			//advance to next square
			audio_play_sound(snd_moveselect, 1, false); // move sound!
			x -= 32;
		}
	}

	if(key_down){
		//check to see if there is a vertical connector!
		if(place_meeting(x,y + 18, oConnectorV)){
			//advance to next square
			audio_play_sound(snd_moveselect, 1, false); // move sound!
			y += 32;
		}
	}

	if(key_up){
		//check to see if there is a vertical connector!
		if(place_meeting(x,y - 18, oConnectorV)){
			//advance to next square
			audio_play_sound(snd_moveselect, 1, false); // move sound!
			y -= 32;
		}
	}
}

//see if user can afford to unlock


if(key_jump || mouse_check_button_released(mb_left)){
	if(global.dialogPause == 0){ //only do if no dialogue
		if(hoverLocked){ //if locked...
			// Grumpy slime dialogue
			create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion );			


		} else { // navigate to the level
			(inst_FA1861A).falling = true;
			chosenLevel = hoverRoom;
			global.currentLevel = hoverNumber;
			global.currentWorld = hoverWorld;
			audio_play_sound(snd_select1, 1, false); // select sound!
			alarm[0] = 45;
		}
	}
	
}

