//if I'm falling, kill the egg

if (!onTheGround){
	show_debug_message("I hit it");
	
	other.y = other.y - 10;
    other.ySpeed = other.ySpeed * -1;
	other.yDirection = other.yDirection * -1;

}