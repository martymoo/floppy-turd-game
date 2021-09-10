//set up variables
levelStars = global.levelList[ levelWorld, levelNumber ].stars;
levelUnlocked =  global.levelList[ levelWorld, levelNumber ].isUnlocked;

if (levelUnlocked){
	levelLocked = false;
}


// set the cursor to the current level
var levelRigthNow = global.currentLevel;

if(levelNumber == levelRigthNow){
	//move cursor here
	cursor = instance_find(oTileFocus,0);
	cursor.x = x;
	cursor.y = y;
	
}

