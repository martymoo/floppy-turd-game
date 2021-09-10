//drawing special hero events

//flashing when hit
if(knockingback){
	image_blend = c_yellow;
} else {
	image_blend = c_white;
}

// draw floppy
draw_self();

//positioning the camera 
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

//inventory stuff
if(yellowKey){ draw_sprite_ext(sKeyYellow_tiny, 0, vx + 296, vy + 7, 1, 1,1, c_white, 1);  }  // draw the key
if(blueKey){ draw_sprite_ext(sKeyBlue_tiny, 0, vx + 278, vy + 7, 1, 1,1, c_white, 1);  }  // draw the key
if(greenKey){ draw_sprite_ext(sKeyGreen_tiny, 0, vx + 260, vy + 7, 1, 1,1, c_white, 1);  }  // draw the key


//drawing coren count
if(totalCorn > 0){
	draw_sprite_ext(sCorn_tiny, 0, vx + 312, vy + 7, 1, 1,1, c_white, 1); // draw a corn
	draw_set_colour(c_white);
	draw_set_font(fnt_dogicaPixel);
	draw_text(vx + 320, vy + 1, currentCorn );
	draw_text(vx + 330, vy + 1, "/" );
	draw_text(vx + 340, vy + 1, totalCorn );
}




// Drawing your death count
if(global.totalDeaths > 0){
	draw_sprite_ext(sTileNumbers, 10, vx + 7, vy + 7, 1, 1, 1, c_white, 1); // draw death
	draw_set_colour(c_white);
	draw_set_font(fnt_dogicaPixel);
	draw_text(vx + 16, vy + 1, global.totalDeaths );
	

}
