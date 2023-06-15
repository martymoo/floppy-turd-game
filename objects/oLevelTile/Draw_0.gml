//draw level tiles based on variables

//some variables
var currentLevNum = levelNumber - 1; //get current number, minus one for sprite index




draw_self();

if (levelLocked = false || levelUnlocked = true){

	//if level has zero stars
	if (levelStars == 0){

		draw_self();
		if(levelBoss){
			draw_sprite_ext(sTileNumbers, 10, x - 1, y, 1, 1, 0, c_white, 1); //draw current level number
		} else if(levelTutorial){
			draw_sprite_ext(sTileNumbers, 16, x, y, 1, 1, 0, c_white, 1); //draw current level number
	    } else if (levelSlime){
			draw_sprite_ext(sTileNumbers, 12, x, y, 1, 1, 0, c_white, 1); //draw current level number
		} else if (worldForward){
			draw_sprite_ext(sTileNumbers, 13, x, y, 1, 1, 0, c_white, 1); //draw current level number
		} else if (worldBack){
			draw_sprite_ext(sTileNumbers, 14, x, y, 1, 1, 0, c_white, 1); //draw current level number
		} else 
 		{
			//if it's below 10...
			if(levelNumber < 10){
				draw_sprite_ext(sTileNumbers, currentLevNum, x, y, 1, 1, 0, c_white, 1); //draw current level number
			} else if(levelNumber == 10){
				draw_sprite_ext(sTileNumbers, 0, x - 3, y, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileNumbers, 9, x + 1, y, 1, 1, 0, c_white, 1); //draw leading 1
			} else {
				var remainderNum = levelNumber - 11;
				draw_sprite_ext(sTileNumbers, 0, x - 3, y, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileNumbers, remainderNum, x + 1, y, 1, 1, 0, c_white, 1); //draw leading 1
			}
		}
		
	

	} else {
	
		draw_sprite_ext(sTileBackground, 1, x, y, 1, 1, 0, c_white, 1); //draw selected background
		
		
		if(levelBoss){
			draw_sprite_ext(sTileNumbers, 15, x - 1, y, 1, 1, 0, c_white, 1); //draw current level number
			//draw_sprite_ext(sTileStars, levelStars, x, y - 4, 1, 1, 0, c_white, 0); //draw no stars!
		} else if (levelSlime){
			draw_sprite_ext(sTileNumbers, 18, x, y, 1, 1, 0, c_white, 1); //draw current level number
		} else if (levelTutorial){
			draw_sprite_ext(sTileNumbers, 17, x, y, 1, 1, 0, c_white, 1); //draw current level number
		} else {
			//if it's below 10...
			if(levelNumber < 10){
				draw_sprite_ext(sTileNumbers, currentLevNum, x, y + 2, 1, 1, 0, c_white, 1); //draw current level number
				draw_sprite_ext(sTileStars, levelStars, x, y - 4, 1, 1, 0, c_white, 1); //draw current stars
			} else if (levelNumber == 10){
				draw_sprite_ext(sTileNumbers, 0, x - 3, y + 2, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileNumbers, 9, x + 1, y + 2, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileStars, levelStars, x, y - 4, 1, 1, 0, c_white, 1); //draw current stars
			} else 			{
				var remainderNum = levelNumber - 11;
				draw_sprite_ext(sTileNumbers, 0, x - 3, y + 2, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileNumbers, remainderNum, x + 1, y + 2, 1, 1, 0, c_white, 1); //draw leading 1
				draw_sprite_ext(sTileStars, levelStars, x, y - 4, 1, 1, 0, c_white, 1); //draw current stars
			}
		}
		

	}
} else {
	draw_self();
	if(levelBoss){
		draw_sprite_ext(sTileNumbers, 10, x - 1, y, 1, 1, 0, c_white, 1); // draw boss icon
	} else {
		draw_sprite_ext(sTileNumbers, 11, x - 1, y, 1, 1, 0, c_white, 1); //draw lock
	}
	

}



//if level has more than zero stars





