draw_self();

draw_set_colour(c_white);
draw_set_font(fnt_dogicaPixel);
if(room == r_levelPicker){ //level picker 1
	draw_text(98, 6, "World 1" );				
} else if ( room = r_levelPicker_02) { //level picker 2
	draw_text(98, 6, "World 2" );
}


draw_text(98, 16, hoverName );


draw_sprite_ext(sCorn_tiny, 0, 320, 7, 1, 1,1, c_white, 1); // draw a corn
draw_text(335, 2, global.totalCorn );