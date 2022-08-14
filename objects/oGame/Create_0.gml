//Global variables I want to keep track of!

global.dialogPause = false;

//global.currentLevel = level_1_1;
global.currentLevel = 0;
global.currentWorld = 0;
global.totalDeaths = 0;
global.totalCorn = 0;
global.currentLevelNum = 0;
global.bossKey_01 = false; // will be "true" if floppy picks up bossKey

global.jumpPowerUp = false;
global.wallSlidePowerup = false;


//tell if a switch has been pressed
global.switchPressed = false;

//global music variable
global.currentBGM = noone;

base_width = 1056;
base_height = 720;
width = base_width;
height = base_height;

//shake variable
global.shake = false;

//initialize double array for level list
// global.levelList[world, level]
// ex: global.levelList[0, 0] is level 1-1
global.levelList[0,0] = 0; //initialize array?
var i;
i = 0; 
repeat(30) // make 30 levels
   {
   global.levelList[0, i] =  { stars : 0, died : 0, corn : 0, isUnlocked : false } ;
   i ++;
   }



//viewport stuff
// display_set_gui_size(352, 240);

//TODO: enable mobile controls
global.mobileControls = false;