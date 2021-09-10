//Wrapper - pause everything if dialog is on!
if(global.dialogPause == 0){
	draw_sprite_ext(sLeft_arrow, 0, 45, 190, 1, 1,1, c_white, 1); // draw a left arrow
	draw_sprite_ext(sRight_arrow, 0, 65, 190, 1, 1,1, c_white, 1); // draw a left arrow
	draw_set_colour(c_white);
	draw_set_font(fnt_dogicaPixel);
	draw_text(10, 202, "Use arrow keys" );
	draw_text(10, 212, "     to move" );




	draw_sprite_ext(sSpace_button, 0, 177, 190, 1, 1,1, c_white, 1); // draw a space bar
	draw_text(135, 202, "Use space bar" );
	draw_text(135, 212, "     to jump" );


	draw_sprite_ext(sUpArrow, 0, 285, 190, 1, 1,1, c_white, 1); // draw an up arrow
	draw_text(250, 202, "Use up arrow" );
	draw_text(250, 212, " to interact" );
}