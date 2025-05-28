/// @description attack
if target && instance_exists(target) {
	target.hp -= dmg;
	alarm[0] = aspd*global.fps_set;
	show_debug_message($"{id} attacks!");
}
