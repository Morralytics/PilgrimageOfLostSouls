move_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
move_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
move_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
move_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

// Retrieving x and y speed and direction values
x_spd = (move_right - move_left) * move_spd;
y_spd = (move_down - move_up) * move_spd;


// Weapon Check
if (equip == 1) { 
	instance_create_layer(x + _x_offset, y + _y_offset, 0, obj_butcher);
	equip = 0;
};

// Collisions
if (place_meeting(x + x_spd, y, obj_tree)) {
	x_spd = 0;
}

if (place_meeting(x, y + y_spd, obj_tree)) {
	y_spd = 0;
}

// Player movement
x += x_spd;
y += y_spd;


// Player aim
	// Aim
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	
// Sprite control
	face = round(aim_dir/90);
	if face == 4 { face = 3 }
	
// Depth
	depth = -bbox_bottom;
	
// Sprite control ( legacy )
#region
	// Face proper direction
	// if (aim_dir > 0) { face = 0 };
	// if (aim_dir < 0) { face = 2 };
	// if (aim_dir > 0) { face = 3 };
	// if (aim_dir < 0) { face = 1 };
	
	// Set player sprite
	sprite_index = sprite[face]
	
#endregion