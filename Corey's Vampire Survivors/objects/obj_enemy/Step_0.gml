var player_x = obj_player.x;
var player_y = obj_player.y;


if (distance_to_point(player_x, player_y) > spd){
	move_towards_point(player_x, player_y,spd);
}else{
	speed = 0;	
}

if (place_meeting(x, y, obj_player)){
	damageIntervalTimer --;
	if (damageIntervalTimer <= 0){
		damageIntervalTimer = damageIntervalTimerMax;
		show_debug_message("Damaged Player!");
		var instance = instance_place(x, y, obj_player);
		global.COINS--;
	}
}else{
	damageIntervalTimer = 0;
}


if (hp <= 0){
	instance_destroy();	
}