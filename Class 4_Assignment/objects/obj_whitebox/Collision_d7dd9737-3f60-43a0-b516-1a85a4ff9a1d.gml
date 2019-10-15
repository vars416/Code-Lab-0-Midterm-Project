/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(obj_border.x, obj_border.y, layer,  obj_border_02);
instance_create_layer(obj_whitebox.x+64, obj_whitebox.y+64, layer, obj_redbox);
instance_create_layer(obj_whitebox.x+128, obj_whitebox.y+128, layer, obj_key2);
instance_create_layer(obj_whitebox.x+64, obj_whitebox.y-64, layer, obj_bluebox);
instance_create_layer(obj_whitebox.x+128, obj_whitebox.y-128, layer, obj_key3);
instance_destroy();