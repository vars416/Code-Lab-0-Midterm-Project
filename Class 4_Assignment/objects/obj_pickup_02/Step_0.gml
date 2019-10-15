/// @description Insert description here
// You can write your code in this editor

if (held != noone) {
	x = held.x+30;
	y = held.y+30;
}
if (place_meeting(x, y, obj_player)) {
	if (keyboard_check_pressed(vk_space)) {
		if (Textbox01 == noone) {
			Textbox01 = instance_create_layer(x, y, "Text", obj_textbox);
			Textbox01.text = myText2;
			Textbox01.creator = self;
		}
	}
} else {
	if (Textbox01 != noone) {
		instance_destroy(Textbox01);
		Textbox01 = noone;
	}
}