/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

type += mouse_wheel_up()-mouse_wheel_down();

if (type == 0)
	sprite_index = spr_cursor;
else if (type == 1)
	sprite_index = spr_nut;
else if (type == 2)
	sprite_index = spr_skeleton;
else if (type == 3)
	sprite_index = spr_pig;
else if (type == 4)
	sprite_index = spr_can;
else {
	type = type < 0 ? 4 : 0;
}

if (mouse_check_button_pressed(mb_left) && type > 0) {
	var char = undefined;
	var side = mouse_x > room_width/2;
	if (type == 1)
		char = obj_guy;
	else if (type == 2)
		char = obj_skeleton;
	if !is_undefined(char)
		instance_create_layer(x,y,layer,char,{ side });
}
