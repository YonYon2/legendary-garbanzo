/// @description !
var arr = side ? global.red : global.blue;
var find_id = function(e) { return e == id };
var index = array_find_index(arr,find_id);
show_debug_message(index);
array_delete(arr,index,1);
