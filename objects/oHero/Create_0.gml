

/// Our hero! Default variables
spd = 3;
xSpeed = 0;
ySpeed = 0;
ySpeedMax = 13; // max speed?
xSpeedMax = 4; // max speed?
xDirection = 0;

grav = 1; //default gravity
grav_wallSlide = 0.1; //wallJump gravity

depth = -1000;

gamepad_set_axis_deadzone(0, 0.5);

knockingback = false;
shrinking = false;

totalCorn = instance_number(oCorn);
currentCorn = 0;

bufferCounter = 0; //start  players buffer
bufferMax = 5; //amount of frames to do the buffer
coyoteTimer = 0; //countdown to how long you have to jump after moving off a platform
coyoteMax = 5; //the max amount of time you have to coyote jump
jumped = false;
onTheGround = false;
onTheWall = 0;
wallJumpSpd = 3;
WallJumpVert = -11;
wallJumpDelay = 0;
wallJumpDelay_max = 12;
wallSlideTimer = 0;
jumpCounter = 0; //tracking for double jump!

alarm[1] = 300; //start random bubbles

stepCount = 0; //counter for steps 

//mobile control testing
leftOn = 0;
rightOn = 0;
jumpOn = 0;

//inventory or key checking
yellowKey = false;
blueKey = false;
greenKey = false;


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
