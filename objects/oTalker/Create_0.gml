myPortrait			= s_portrait_slime;
myVoice				= snd_voice1;
myFont				= fnt_Talking;
myName				= "Slimey";

myPortraitTalk		= s_portrait_slime_talk;
//myPortraitIdle		= s_portrait_floppy_idle;
myPortraitTalk_x	= 0;
myPortraitTalk_y	= 0;



// 
heroNearby = false;

// DIALOGUE!

var i = 0;
myText[i]		= "Oh! You made it!";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Pleased to meet you! What is your name?";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Hi! I'm Floppy!";
mySpeaker[i]	= oHero;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "A fine name! My name is Mr. Slimey the Slime!";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [24, 2, 35, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "You took quite a big risk going down that toilet, you know.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad
	
i++;
myText[i]		= "You're quite lucky I found you.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= " ...";
mySpeaker[i]	= oHero;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 0.2]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Hmm? What's that? ";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "You want to go FURTHER IN THE PIPES!?";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [15, 1, 38, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Pal, now I want you to know that it's quite noble to wish to go further down...";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "BUT DO YOU HAVE A DEATH WISH!?";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 1];
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= " ...";
mySpeaker[i]	= oHero;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 0.2]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "...The Ocean? I'm afraid the Ocean is very far away.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "You're better off staying here in Slime village.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= " !!! ";
mySpeaker[i]	= oHero;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 0.2]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "I didn't know you were that determined...";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "...Now if you really want to get to the Ocean, you're going to have to go through slime village first.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Just head through the door!  In Slime Village there is direct access to the pipes.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Now some of the later pipes are guarded by the grumpy slimes.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	=  [create_instance_layer, x + 48 , y -16 ,"Instances", oCorn];  // draw a corn
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad
		
i++;
myText[i]		= "You'll have to collect golden corn kernels to go to those ones.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [23, c_yellow, 43, c_white];
myEffects[i]	= [23, 2, 43, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= i + 1
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad

i++;
myText[i]		= "Just head through the door!  In Slime Village there is direct access to the pipes.";
mySpeaker[i]	= oTalker;
myTextCol[i]	= [1, c_white]; 
myEffects[i]	= [1, 0]; 
myTextSpeed[i]	= [1, 1]; // default
myTypes[i]		= 0; //0 is normal, 1 is choice
myNextLine[i]	= -1; // -1 ends
myScripts[i]	= -1; // -1 has no scripts starting
myEmotion[i]	= 0; // 0 normal, 1 happy, 2 sad




		
		
