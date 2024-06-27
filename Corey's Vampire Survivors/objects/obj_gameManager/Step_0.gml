timeSeconds = floor(current_time/1000);
 
if (global.COINS >= nextLevelUp){
	global.PAUSE = true;
	pop_up_menu();	
	nextLevelUp += 100;
} 

if (global.PAUSE){
	if (keyboard_check_pressed(vk_escape)){
		global.PAUSE = false;
		destroy_pop_up_menu();
	}
}