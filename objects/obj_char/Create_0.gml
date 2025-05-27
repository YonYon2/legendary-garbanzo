/// @description ?
// You can write your code in this editor

hp = 1;
max_hp = 1;
dmg = 1; // max dmg
aspd = 1; // attack speed in seconds
spd = 1; // movement speed
size = 0; // just multiples of 8, where 0 is 8
reach = 1; // reach is multiple of size (0.5 means half a size of reach)
target = noone; //store previously found enemy id to measure distance when attacking
if (side)
	array_push(global.red,id);
else
	array_push(global.blue,id);
