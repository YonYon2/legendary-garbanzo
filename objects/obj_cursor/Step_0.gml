/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

var m_up = mouse_wheel_up(), m_down = mouse_wheel_down();
type = clamp(type + (m_up-m_down), 0, array_length(global.chars))
if (m_up || m_down) {
	sprite_index = (type == 0) ? spr_cursor : object_get_sprite(global.chars[type-1]);
}

if (mouse_check_button_pressed(mb_left) && type > 0 && !position_meeting(x,y,obj_play)) {
	var char = (type == 0) ? undefined : global.chars[type-1];
	var side = mouse_x > room_width/2;
	if !is_undefined(char) {
		var new_guy = instance_create_layer(x,y,layer,char,{ side });
		show_debug_message($"new guy was {new_guy}")
	}
}

if (mouse_check_button_released(mb_right)) {
	var inst = instance_place(x,y,obj_char);
	if inst {
		instance_destroy(inst);
	}
}
