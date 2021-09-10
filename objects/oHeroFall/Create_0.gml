
alarm[0] = 60;

alarm[1] = 30;

alarm[2] = 15;

alarm[3] = 45;

xSpeed = 0;

ySpeed = 4;

falling = false;

var inst = instance_create_depth(28, 280, -10000, oBubbles);
with (inst)
    {
    
    }

//Create a button for fullScreen!
// fullscreen_button = clickable_add(2, 2, sprite_get_tpe(sFullScreen, 0), "gmcallback_fullscreen", "_self", "");

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= s_portrait_floppy;
myVoice				= snd_voice2;
myFont				= fnt_Talking;
myName				= "Floppy";

myPortraitTalk		= s_portrait_floppy_mouth;
myPortraitIdle		= s_portrait_floppy_idle;
myPortraitTalk_x	= 0;
myPortraitTalk_y	= 0;
