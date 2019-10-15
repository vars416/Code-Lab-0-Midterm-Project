/// @description Insert description here
// You can write your code in this editor

//movement
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

//borders
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

//collision with in room objects
if (place_meeting(x + hspeed, y, obj_in_room_objects)) 
{
	while (!place_meeting(x + sign(hspeed), y, obj_in_room_objects))
	x += sign(hspeed);
	
	hspeed = 0;
}

if (place_meeting(x, y + vspeed, obj_in_room_objects)) 
{
	while (!place_meeting(x, y + sign(vspeed), obj_in_room_objects))
	y += sign(vspeed);
	
	vspeed = 0;
}

//picking and dropping objects
if (keyboard_check_pressed(ord("E")))
{
	if (item_held == noone)//if obj is held by the player
	{
		var item01 = instance_place(x, y, obj_pickup);
		if (item01 != noone) {
			item_held = item01;
			show_debug_message("qwerty");
			item_held.held = self;
		}
	} else {
		item_held.held = noone;
		item_held = noone;
	}
}