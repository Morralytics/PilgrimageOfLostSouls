_player_location_x = obj_player.x;
_player_location_y = obj_player.y;

x = _player_location_x;
y = _player_location_y;

weapon_dir = obj_player.aim_dir;
image_angle = weapon_dir;

// Weapon flip
	_weapon_y_scale = 1;
	if weapon_dir > 90 && weapon_dir < 270 {
		_weapon_y_scale = -1;
	}
	
image_yscale = _weapon_y_scale;

depth = -bbox_bottom;