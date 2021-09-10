//Restart game on "r"
if (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_start)))  room_restart();


/// Detect moves in different directions
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_jump = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face2))  || (device_mouse_check_button_pressed(0, mb_left));
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0);

var xDirection = 0;
var jump = key_jump;

//Detect if turdy is on a wall or not!
var onTheGround = place_meeting(x, y + 1, oWall);

//Turn in the direction I'm facing
if (xDirection == 0) image_xscale = -1;

//Change speed
xSpeed = xDirection * spd;
ySpeed++;


//Change sprite styles based on action
if (onTheGround){
	if (xDirection != 0) { sprite_index = sHero_run; }
	else { sprite_index = sHero_idle; }

	if(startingNow){
		startingNow = false;
		alarm[0] = room_speed * 0.25;
		
	}

	// Jump code!
	if (jump) {
		audio_play_sound(snd_jump, 1, false); // jump sound!
		ySpeed = -11;
		startingNow = true;
		//xSpeed = -10;
	}
} else {
	sprite_index = sHero_jump;
}

if (place_meeting(x + xSpeed, y, oWall)) {
	while (!place_meeting(x + sign(xSpeed), y, oWall)){
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

if(startingNow || stageTwo){
	x += (-1 * spd);
}


if (place_meeting(x, y + ySpeed, oWall)) {
	while (!place_meeting(x, y + sign(ySpeed), oWall)){
		y += sign(ySpeed);
	}	
	
	ySpeed = 0;
}
y += ySpeed;

