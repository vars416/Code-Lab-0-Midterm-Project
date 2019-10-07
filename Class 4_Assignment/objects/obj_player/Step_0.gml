/// @description Insert description here
// You can write your code in this editor

frames++

if (keyboard_check(ord("W"))) 
{
	vspeed = -player_speed;
	hspeed = 0;
}

else if (keyboard_check(ord("S")))
{
	vspeed = player_speed;
	hspeed = 0;
}

else if (keyboard_check(ord("A")))
{
	vspeed = 0;
	hspeed = -player_speed;
}

else if (keyboard_check(ord("D")))
{
	vspeed = 0;
	hspeed = player_speed;
}

else {
	speed = 0;
}

if (y < 0 + 64) {
	y = 0 + 64;
}

if(y > room_height - 64){
	y = room_height - 64;
}

if (x < 0 + 64) {
	x = 0 + 64;
}

if(x > room_width - 64){
	x = room_width - 64;
}

if (place_meeting(x, y, obj_border)) {
	x = obj_border.x - sprite_width;
	y = obj_border.y - sprite_height;
}