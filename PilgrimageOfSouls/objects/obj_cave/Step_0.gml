/// @description Insert description here
// You can write your code in this editor

//if (count < max_spawn && timer == count*100) {
//	instance_create_layer(x, y, 0, obj_gungun)
//	count++;
//}

//timer++;

if (count < max_spawn && (irandom(10)==3)) {

	var _x_spawn = irandom_range(-max_range, max_range);
	//var _y_spawn = irandom_range(-max_range, max_range);


	//_x_spawn = irandom_range(-max_range, max_range);
	//_y_spawn = irandom_range(-max_range, max_range);
	//if (!((-min_range <= _x_spawn) && (_x_spawn <= min_range))) {
	//	if (!((-min_range <= _y_spawn) || (_y_spawn <= min_range))) {
	//		instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
	//		count++;
	//	}
	//}
	randomize();
	if (_x_spawn >= min_range) {
		var _y_spawn = irandom_range(-max_range, max_range);
		instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
		count++;
	}
	if (_x_spawn <= -min_range) {
		var _y_spawn = irandom_range(-max_range, max_range);
		instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
		count++;
	}
	
	var _y_spawn = irandom_range(-max_range, max_range);
	if (_y_spawn >= min_range) {
		_x_spawn = irandom_range(-max_range, max_range);
		instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
		count++;
	}
	
	if (_y_spawn <= -min_range) {
		_x_spawn = irandom_range(-max_range, max_range);
		instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
		count++;
	}
	
	
}
	
	
	//show_debug_message("count=",count);
		

	