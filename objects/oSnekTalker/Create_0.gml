event_inherited(); //so it will inherit from par_speaker

myName				= "Snek";
myVoice				= snd_voice1;
myPortrait			= sSnekPortrait;
myPortraitTalk		= s_portrait_snekTalk;


// DIALOGUE!

var i = 0;
myText[i]		= dialogue;
mySpeaker[i]	= oSnekTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad