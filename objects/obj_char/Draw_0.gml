/// @description &
// You can write your code in this editor

draw_self();
var hp_pos = (bbox_left+bbox_right)/2;
var side_c = side ? c_red : c_aqua;
var bar_yoff = 2, bar_height = 8;
draw_rectangle_color(hp_pos - 4*hp/2, bbox_top-bar_height+bar_yoff, hp_pos + 4*hp/2, bbox_top+bar_yoff,
	side_c,side_c,side_c,side_c,0);
