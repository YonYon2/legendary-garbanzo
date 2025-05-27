/// @description Find nearby enemies
var close_inst = undefined;
var in_range = false;

// check enemy chars array
var arr = side ? global.blue : global.red;
close_inst = array_first(arr);
for (var i = 1, n = array_length(arr); i < n; i += 1) {
	var inst = arr[i];
	if instance_exists(close_inst) && instance_exists(inst) && 
	point_distance(x,y,inst.x,inst.y) < point_distance(x,y,close_inst.x,close_inst.y) {
		close_inst = inst;
	}
}
if (!is_undefined(close_inst) && instance_exists(close_inst)) {
	var dist = point_distance(x,y,close_inst.x,close_inst.y);
	direction = point_direction(x,y,close_inst.x,close_inst.y);
	// distance to stop is your size + reach + their size
	in_range = (dist > (reach+1)*(size+1)*8 + (close_inst.size+1)*8)
	speed = spd*in_range;
} else speed = 0;

if in_range && alarm[0] == -1 {
	alarm[0] = aspd*global.fps_set;
}
