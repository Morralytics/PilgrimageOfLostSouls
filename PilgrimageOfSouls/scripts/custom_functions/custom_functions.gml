// Draw player weapon
function draw_weapon() {
	#region
	// Draw the weapon

	// Weapon flip
	// var _weapon_y_scale = 1;
	// if aim_dir > 90 && aim_dir < 270 {
		// _weapon_y_scale = -1;
	// }
	
	// Weapon distance from player origin
		// we want the weapon to offset in the direction that it is aiming
		// var _x_offset = lengthdir_x( weapon_offset_dist, aim_dir );
		// var _y_offset = lengthdir_y( weapon_offset_dist, aim_dir );
		
	// Draw weapon
	// ( sprite, image index, players x, players y, x scale, y scale, rotation, color blend, opacity )
	// draw_sprite_ext( spr_cleaver, 0, x + _x_offset, y + _y_offset, 1, _weapon_y_scale, aim_dir, c_white, 1 );
	
	
	// Draw weapon ( legacy )
	#region
		// if (face == 0) {
			// draw_sprite_ext( spr_butcher, 0, x + 3, y, 1, _weapon_y_scale, aim_dir, c_white, 1 );
		// }

		// if (face == 1) {
			// draw_sprite_ext( spr_butcher, 0, x, y - 3, 1, _weapon_y_scale, aim_dir, c_white, 1 );
		// }

		// if (face == 2) {
			// draw_sprite_ext( spr_butcher, 0, x - 3, y, 1, _weapon_y_scale, aim_dir, c_white, 1 );
		// }

		// if (face == 3) {
			// draw_sprite_ext( spr_butcher, 0, x, y + 3, 1, _weapon_y_scale, aim_dir, c_white, 1 );	
		// }
	#endregion
	#endregion
};

// Get Player Location
function get_player_location_x() {
	return obj_player.x;
}

function get_player_location_y() {
	return obj_player.y;
}

// Spawn within a specified region defined in the spawner init variables
function spawn_region(_enemy) {
	if (count < max_spawn && (irandom(10)==3)) {
		var _x_spawn = irandom_range(-max_range, max_range);
		randomize();
		
		// Checks for x range and creates random y cordinate
		#region
		if (_x_spawn >= min_range) {
			var _y_spawn = irandom_range(-max_range, max_range);
			instance_create_layer(x + _x_spawn, y + _y_spawn, 0, _enemy);
			count++;
		}
		if (_x_spawn <= -min_range) {
			var _y_spawn = irandom_range(-max_range, max_range);
			instance_create_layer(x + _x_spawn, y + _y_spawn, 0, _enemy);
			count++;
		}
		#endregion
	
		// Checks for y range and creates random x cordinate
		#region
		var _y_spawn = irandom_range(-max_range, max_range);
		if (_y_spawn >= min_range) {
			_x_spawn = irandom_range(-max_range, max_range);
			instance_create_layer(x + _x_spawn, y + _y_spawn, 0, _enemy);
			count++;
		}
		if (_y_spawn <= -min_range) {
			_x_spawn = irandom_range(-max_range, max_range);
			instance_create_layer(x + _x_spawn, y + _y_spawn, 0, _enemy);
			count++;
		}
		#endregion
	}
}