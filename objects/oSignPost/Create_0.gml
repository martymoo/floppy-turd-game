//-------DIALOGUE STUFF

myPortrait			= s_portrait_floppy;
myVoice				= snd_voice3;
myFont				= fnt_Talking;
myName				= "Floppy";

myPortraitTalk		= s_portrait_floppy_mouth;
myPortraitIdle		= s_portrait_floppy_idle;
myPortraitTalk_x	= 0;
myPortraitTalk_y	= 0;


// 
heroNearby = false;



// DIALOGUE!

var i = 0;
myText[i]		= signContent;
mySpeaker[i]	= oSignPost;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1;
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad