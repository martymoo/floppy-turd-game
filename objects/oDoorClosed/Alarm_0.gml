// Goes back to the level selector!


var cornLeft = oHero.totalCorn - oHero.currentCorn;
var currentLevelCorn = oHero.currentCorn; // how many kernels you've grabbed now
var currentStars = 1; //you get min 1 star for clearing level

//calculate star ratings
if (cornLeft == 0){
	currentStars = 3;
} else if (cornLeft == 1 || cornLeft == 2){
	currentStars = 2;
}

//shortcut for world + level
var curLvl = global.currentLevel;
var curWrld = global.currentWorld;

//set the stars
if(global.levelList[curWrld, curLvl].stars < currentStars){ //if user did better than last time
	global.levelList[curWrld, curLvl].stars = currentStars;  // update stars!
}

//set the corn
if(global.levelList[curWrld, curLvl].corn < currentLevelCorn){ //if user did better than last time
	global.totalCorn += currentLevelCorn - global.levelList[curWrld, curLvl].corn; // update total corn count
	global.levelList[curWrld, curLvl].corn = currentLevelCorn; // update currentLevel corn		
}




// shut down curren BGM
audio_stop_sound(global.currentBGM);

//go back to level map
if(curWrld == 2){
	room_goto(r_levelPicker_02);
} else if (curWrld == 1 || curWrld == 0){
	room_goto(r_levelPicker);
}




