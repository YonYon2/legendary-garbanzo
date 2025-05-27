// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globals(){
	return "write global variables here";
}

global.fps_set = game_get_speed(gamespeed_fps);
show_debug_message(global.fps_set);
global.start = 0; // says if a game has started
global.play = 0; // pause and resume game loop
global.chars = [obj_ant, obj_castle, obj_erm, obj_giant, obj_guy, obj_pib, obj_skeleton, obj_spiral, obj_wiz];
global.red = [];
global.blue = [];

function scr_follow(){
	// follow any nearby enemies
	var close_inst = undefined;
	show_debug_message(instance_number(obj_char));
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
		// distance equals your 
		speed = spd*(dist > (reach+1)*(size+1)*8 + (close_inst.size+1)*8);
		
		//show_debug_message($"dist {distance_to_point(close_inst.x,close_inst.y)}");
	} else speed = 0;
}