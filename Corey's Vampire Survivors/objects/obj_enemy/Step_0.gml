if (global.PAUSE){
	speed = 0;
	return;
}

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
		global.COINS-= damage;
	}
}else{
	damageIntervalTimer = 0;
}


if (hp <= 0){
	var deathDisplay = instance_create_depth(x, y, 0, obj_spriteDisplayONCE);
	deathDisplay.sprite_index = spr_enemyDeath;
	instance_destroy();	
}