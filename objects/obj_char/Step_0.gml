/// @description Insert description here
// You can write your code in this editor

if global.play {
	if !is_undefined(action) {
		image_speed = 1;
		//speed = 1;
		action();
	}
} else {
	image_speed = 0;
	speed = 0;
}