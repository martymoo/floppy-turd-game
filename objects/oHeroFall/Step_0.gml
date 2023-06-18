/// @description Insert description here
// You can write your code in this editor

if(global.hat == "bow"){ //if bow, show bow hat!
	sprite_index = sHeroFall_bow; 
} else {
	sprite_index = sHeroFall; 
}

x += xSpeed;

if (y < 116) {
	y += ySpeed;
}

if (falling){
	y += ySpeed;
}



