/// @description Insert description here
// You can write your code in this editor

for(i=0; i<image_xscale; i++){
    for(j=1; j<(abs(image_yscale)); j++){
        //draw_sprite(sWaterfallBottom, image_index, x+(i*sprite_get_width(sWaterfallBottom)), y+(j*sprite_get_height(sWaterfallBottom)));
		
		draw_sprite_ext(sWaterfallTop, frame, x+(i*sprite_get_width(sWaterfallTop)), y+(j*sprite_get_height(sWaterfallTop)),1,1,0, c_white, 1 );
    }
}

//draw hitbox
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);
