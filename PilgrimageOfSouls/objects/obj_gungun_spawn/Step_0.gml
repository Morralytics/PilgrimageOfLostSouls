if (count < max_spawn) {
	
	// Produce random function outcome
	var _flip = irandom(10);
	var _rand = irandom(1);
	
	var _rand_list = [-1, 1];
	
	var _x_spawn = 0;
	var _y_spawn = 0;
	
	if (_flip >= 0 && _flip <= 5) {
		_x_spawn = irandom_range(min_range, max_range) * _rand_list[_rand];
		_y_spawn = irandom_range(-max_range, max_range);
	}
	
	if (_flip >= 5 && _flip <= 10) {
		_x_spawn = irandom_range(-max_range, max_range);
		_y_spawn = irandom_range(min_range, max_range) * _rand_list[_rand];
	}

	
	instance_create_layer(x + _x_spawn, y + _y_spawn, 0, obj_gungun);
	count ++;
}
