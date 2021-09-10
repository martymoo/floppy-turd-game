/// @description Insert description here
// You can write your code in this editor
// If x % 2 == 1 then it is odd.
// If x % 2 == 0 it is even.

if(flashCounter < 5){
	if(flashCounter % 2 == 1) {
		image_index = 0;
	} else if (flashCounter == 0) {
		image_index = 2;
	} else {
		image_index = 2;
	}
	flashCounter += 1;
	show_debug_message(flashCounter);
	alarm[1] = 10;


} else {
	alarm[0] = 1;
}




