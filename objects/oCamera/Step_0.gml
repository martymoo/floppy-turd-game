var xCam = clamp(oHero.x - wCam / 2, 0, room_width - wCam) ;
var yCam = clamp(oHero.y - hCam / 2, 0, room_height - hCam) ;

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

var backgroundLayer = layer_get_id("Background_bigmush");
var farLayer = layer_get_id("Background");

layer_x(farLayer, newX * 0.65); // paralax moving the background
layer_y(farLayer, newY * 0.65); // paralax moving the background



if(room == level_2_1_shroom){
	var bg1 = layer_get_id("Backgrounds_1");
	var bg2 = layer_get_id("Backgrounds_2");
	show_debug_message("mushylayer is go");

	layer_x(farLayer, newX * 0.95); // paralax moving the background
	layer_y(farLayer, newY * 0.95); // paralax moving the background


	layer_x(bg1, newX * 0.85); // paralax moving the background
	layer_y(bg1, newY * 0.95); // paralax moving the background
	//layer_y(bg1, yCam); // paralax moving the background


	layer_x(bg2, newX * 0.65); // paralax moving the background
	layer_y(bg2, newY * 0.95); // paralax moving the background
	//layer_y(bg2, newY * 0.65); // paralax moving the background


}

//SHAKE THE ROOM
if(global.shake){

	if(shakeCount>0){ // while shakecount is counting down
		shakeCount--;
		var range = 3;
		camera_set_view_pos(view_camera[0], newX+random_range(-range, range), newY+random_range(-range, range));
	} else {
		global.shake = false;
		shakeCount = 15; //reset shakecount
	}
	
}else{
	camera_set_view_pos(view_camera[0], newX, newY);
}