global.PAUSE = false;

timeSeconds = 0;

nextLevelUp = 100;

function pop_up_menu(){
	var Pop_up_menu_LayerID = layer_get_id("Pop_up_menu");
	layer_set_visible(Pop_up_menu_LayerID, true);
	
	var camera = view_camera[0];
	var createx = camera_get_view_x(camera); 
	var createy = camera_get_view_y(camera);
	instance_create_layer(createx + 160 , createy + 160, Pop_up_menu_LayerID, obj_test); 
	instance_create_layer(createx + 288 , createy + 160, Pop_up_menu_LayerID, obj_test);
	instance_create_layer(createx + 416 , createy + 160, Pop_up_menu_LayerID, obj_test);
	
}

function destroy_pop_up_menu(){
	var Pop_up_menu_LayerID = layer_get_id("Pop_up_menu");
	layer_destroy_instances(Pop_up_menu_LayerID);	
	layer_set_visible(Pop_up_menu_LayerID, false);
}