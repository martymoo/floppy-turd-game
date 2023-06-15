/// @description Insert description here
// You can write your code in this editor

hoverRoom = other.roomNumber;
hoverNumber = other.levelNumber;
hoverWorld = other.levelWorld;
hoverName = other.levelName;
hoverCost = other.levelCost;

hoverLocked = other.levelLocked;

if(other.levelLocked){
	
	//test badge reqs too 
	//wow look at this consistancy is it a badge or a key? - Gus
	if(other.levelBadged){ // for badge-locked levels
		explainCost = "You can't get past here without a boss key, bub! ";
		myText[0] = explainCost;
		if(global.bossKey_01){
			myNextLine[0]= 6;
		} else {
			myNextLine[0]= 5;
		}
		
		
		
	} else if(other.levelBadged == false){
		explainCost = "It's locked, bub. You have to spend " + string(hoverCost) + " corn to get in.";
		myText[0] = explainCost;
		myNextLine[0]= 1;
		if (global.totalCorn >= hoverCost){ // you can afford to unlock a level
			//show_debug_message("can afford to unlock");
			myNextLine[1]	= [2, 3]; //advance dialogue to success
		} else { //you can't afford it
			//show_debug_message("can't afford to unlock");
			myNextLine[1]	= [4, 3]; //advance dialogue to failure
		}		
		
	}




	
	if(unlockNow){
		if(other.levelBadged){
			other.levelLocked = false; // unlock the level onscreen now
			other.levelBadged = false;
			unlock_level(hoverWorld, hoverNumber);
			unlockNow = false; 
		} else {
		global.totalCorn -= hoverCost; // subtract corn
		other.levelLocked = false; // unlock the level onscreen now
		
		unlock_level(hoverWorld, hoverNumber);
		//global.w1_l8.isUnlocked = true; //unlock globally
		unlockNow = false; 
		}
	}
}

