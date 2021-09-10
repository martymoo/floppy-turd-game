/// @description Insert description here
// You can write your code in this editor

hoverRoom = other.roomNumber;
hoverNumber = other.levelNumber;
hoverWorld = other.levelWorld;
hoverName = other.levelName;
hoverCost = other.levelCost;

hoverLocked = other.levelLocked;

if(other.levelLocked){
	
	explainCost = "It's locked, bub. You have to spend " + string(hoverCost) + " corn to get in.";
	myText[0] = explainCost;


	if (global.totalCorn >= hoverCost){ // you can afford to unlock a level
		//show_debug_message("can afford to unlock");
		myNextLine[1]	= [2, 3]; //advance dialogue to success
	} else { //you can't afford it
		//show_debug_message("can't afford to unlock");
		myNextLine[1]	= [4, 3]; //advance dialogue to failure
	}

	
	if(unlockNow){
		global.totalCorn -= hoverCost; // subtract corn
		other.levelLocked = false; // unlock the level onscreen now
		
		unlock_level(hoverWorld, hoverNumber);
		//global.w1_l8.isUnlocked = true; //unlock globally
		unlockNow = false; 
	}
}

