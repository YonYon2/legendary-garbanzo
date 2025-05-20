/// @description ?

if global.play {
	image_speed = 1;
	speed = 1;

	if instance_exists(obj_guy) {
		var close_inst = undefined;
		show_debug_message(is_undefined(close_inst));
		for (var i = 0, n = instance_number(obj_guy); i < n; ++i) {
			var inst = instance_find(obj_guy, i);
			if (inst == id)
				break;
			if (is_undefined(close_inst)) {
				close_inst = inst;
			} else if (distance_to_point(inst.x,inst.y) < distance_to_point(close_inst.x,close_inst.y)) {
				close_inst = inst;
			}
		}
		if (!is_undefined(close_inst)) {
			direction = point_direction(x,y,close_inst.x,close_inst.y);
			show_debug_message($"dist {distance_to_point(close_inst.x,close_inst.y)}");
		}
	}
} else {
	image_speed = 0;
	speed = 0;
}