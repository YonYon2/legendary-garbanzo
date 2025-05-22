/// @description Find nearby enemies
var close_inst = undefined;

// find closest enemy
for (var i = 0, n = instance_number(obj_char); i < n; ++i) {
	var inst = instance_find(obj_char, i);
	// do not check yourself or allies
	if (inst == id || inst.side == side)
		continue;
	// set first found
	if (is_undefined(close_inst))
		close_inst = inst;
	// compare
	else if (point_distance(x,y,inst.x,inst.y) < point_distance(x,y,close_inst.x,close_inst.y)) {
		close_inst = inst;
	}
}
if (!is_undefined(close_inst)) {
	var dist = point_distance(x,y,close_inst.x,close_inst.y);
	direction = point_direction(x,y,close_inst.x,close_inst.y);
	// distance to stop is your size + reach + their size
	speed = spd*(dist > (reach+1)*(size+1)*8 + (close_inst.size+1)*8);
} else speed = 0;
