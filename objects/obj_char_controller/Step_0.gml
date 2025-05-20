/// @description Insert description here
// You can write your code in this editor

with obj_char {
	if global.play {
		image_speed = 1;
		event_perform(ev_step,ev_step_normal);
	} else {
		image_speed = 0;
		speed = 0;
	}
}