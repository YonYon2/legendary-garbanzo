/// @description Insert description here
// You can write your code in this editor

draw_self();
var hp_pos = lerp(bbox_left, bbox_right, hp/max_hp);
var side_c = side ? c_red : c_aqua;
draw_rectangle_color(bbox_left-12,bbox_top-16,bbox_left-4,bbox_top,side_c,side_c,side_c,side_c,0);
draw_rectangle_color(bbox_left,bbox_top-16,hp_pos,bbox_top,c_green, c_green, c_green, c_green, 0);
