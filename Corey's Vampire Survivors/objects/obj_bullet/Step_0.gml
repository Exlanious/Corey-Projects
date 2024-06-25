/// @description Insert description here
// You can write your code in this editor
if (global.PAUSE){
	return;
}

if (dir = Direction.RIGHT){
	x += spd;
}if (dir = Direction.LEFT){
	x -= spd;
}if (dir = Direction.UP){
	y -= spd;
}if (dir = Direction.DOWN){
	y += spd;
}
//out of bounds
if (x <0 or x > room_width or y < 0 or y > room_height){
	instance_destroy();	
}
	
if (place_meeting(x, y, obj_enemy)){
	var instance = instance_place(x, y, obj_enemy);
	instance.hp -= damage;
	instance_destroy();
}