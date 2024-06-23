spawnTimer ++;
if (spawnTimer >= spawnTimerMax){
	instance_create_depth(x, y,0, obj_enemy);
	spawnTimer = 0;
	show_debug_message("Enemy Spawned!");
}