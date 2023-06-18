// dialogue - grumpy slime for locked levels 
myPortrait			= s_portrait_slimeGrump;
myVoice				= snd_voice1;
myFont				= fnt_Talking;
myName				= "Grumpy";

myPortraitTalk		= s_portrait_grump_mouth;
//myPortraitIdle		= s_portrait_floppy_idle;
myPortraitTalk_x	= 0;
myPortraitTalk_y	= 0;



// 
hoverLocked = false;
hoverCost = 0;
canUnlock = false; //variable to see if you have enough corn to unlock a locked level!
unlockNow = false; //variable to determine if we need to unlock the level...

// DIALOGUE!
explainCost = "It's locked, bub. You have to spend 3 corn to get in.";


var i = 0;
myText[i]		= explainCost;
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

//Line 1
i++; 
myText[i]		= ["I'll pay!", "No thank you"];
mySpeaker[i]	= oHeroFall;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 1; //0 is normal, 1 is choice
myNextLine[i]	= [2, 3]; //advance the dialogue
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 2 - I'll pay up
i++; 
myText[i]		= "Thanks for the corn! The level is unlocked!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
//myScripts[i]	= -1; // -1 has no scripts starting
myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 3 - No thanks
i++; 
myText[i]		= "Come back when you're ready to pay!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 4 - No thanks
i++; 
myText[i]		= "You don't have enough corn! Come back when you've collected some more!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 5 - Defeat the boss first!
i++; 
myText[i]		= "You gotta defeat the boss before you get through here!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 6 - Ill pay up (you had this marked as line 2 for some reason - Gus)
i++; 
myText[i]		= "Oh - you've got the boss key already! Go on ahead!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
//myScripts[i]	= -1; // -1 has no scripts starting
myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 7- I have the bow
i++; 
myText[i]		= "Oh - you've got the cute bow already! Go head on to the party!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
//myScripts[i]	= -1; // -1 has no scripts starting
myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

// Line 8 - bowless :(
i++; 
myText[i]		= "You need a cute bow to get into THIS party!";
mySpeaker[i]	= oTileFocus;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; //end 
myScripts[i]	= -1; // -1 has no scripts starting
//myScripts[i]	= [change_variable, oTileFocus, "unlockNow", "true"]
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad
