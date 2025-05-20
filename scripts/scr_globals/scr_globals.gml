// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globals(){
	return "write global variables here";
}

global.play = 0;
global.chars = [obj_ant, obj_castle, obj_erm, obj_giant, obj_guy, obj_pib, obj_skeleton, obj_spiral, obj_wiz];

function scr_follow(){
	// follow any nearby enemies
	if instance_exists(obj_char) {
		var close_inst = undefined;
		//show_debug_message(is_undefined(close_inst));
		for (var i = 0, n = instance_number(obj_char); i < n; ++i) {
			var inst = instance_find(obj_char, i);
			// do not check yourself or allies
			if (inst == id || inst.side == side)
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
}