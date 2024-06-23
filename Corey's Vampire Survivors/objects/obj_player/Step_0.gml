
//x movement
if (keyboard_check(ord("A"))){
	x = x - spd;
	dir = Direction.LEFT;
}
if (keyboard_check(ord("D"))){
	x = x + spd;
	dir = Direction.RIGHT;
}

//y movement
if (keyboard_check(ord("W"))){
	y = y - spd;
	dir = Direction.UP;
}
if (keyboard_check(ord("S"))){
	y = y + spd;
	dir = Direction.DOWN;
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

//shoot bullet
shootTimer ++;
if (shootTimer >= shootTimerMax){
	var bullet = instance_create_depth(x, y,0,obj_bullet);
	with(bullet){
		dir = obj_player.dir;
	}
	shootTimer = 0;
	show_debug_message("Bullet Shot!");
}

//pick up coins

if (place_meeting(x, y, obj_coin)){
	var instance = instance_place(x, y, obj_coin);
	instance_destroy(instance);
	global.COINS++;
}