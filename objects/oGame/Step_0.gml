if (browser_width != width || browser_height != height)
    {
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
    scale_canvas(base_width, base_height, width, height, true);
    }
	
	
// PAUSE + UNPAUSE GAME	WHEN DIALOG APPEARS
if( instance_exists(obj_textbox)){
	global.dialogPause = true;
} else {
	global.dialogPause = false;
}

