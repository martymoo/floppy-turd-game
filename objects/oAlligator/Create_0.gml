bossHearts = 3; //start with three health
bossStage = 1; //walking across the top, making eggs


walkSlow = false; // Slow after egg drop!

xDirection = 1; //going right
xSpeed = 2;
xSpeedDefault = 2; //default speed?

//Create egg drops on timer
alarm[0] = 60;
knockback = false; //show when gator gets hit!

resetCounter = 60 //timer to move to next room

flashAlpha = 0; //flash alpha for hit
flashColor = c_gray ; //flash color

//make gator roar on entry!
roomStarted = true; 
gatorRoar = false;