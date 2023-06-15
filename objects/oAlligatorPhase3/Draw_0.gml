draw_self();


//positioning the camera 
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

//draw heart counter
var sep = 20; // Separation of the hearts from origin to origin
for(var i=0; i<bossHearts; i++) {
	draw_sprite_ext(sBossHeart, 0, vx + 142 + (i * sep), vy + 24, 1, 1,1, c_white, 1); // draw a bossheart 	
    
}

//Flash on hit
if(flashAlpha > 0){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	shader_reset();
}