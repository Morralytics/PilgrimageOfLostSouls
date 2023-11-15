// Draw weapon behind player
	if aim_dir < 180 && aim_dir > 0 { draw_weapon() };

// Draw the player
	draw_self();

// Draw weapon in front of player
	if aim_dir >= 180 && aim_dir < 360 { draw_weapon() }