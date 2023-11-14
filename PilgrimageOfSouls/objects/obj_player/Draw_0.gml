// Draw the weapon
var _weapon_y_scale = 1;
if aim_dir > 90 && aim_dir < 270 {
	_weapon_y_scale = -1;
}

// ( sprite, image index, players x, players y, x scale, y scale, rotation, color blend, opacity )
if (face == 0) {
	draw_sprite_ext( spr_butcher, 0, x + 3, y, 1, _weapon_y_scale, aim_dir, c_white, 1 );
}

if (face == 1) {
	draw_sprite_ext( spr_butcher, 0, x, y - 3, 1, _weapon_y_scale, aim_dir, c_white, 1 );
}

if (face == 2) {
	draw_sprite_ext( spr_butcher, 0, x - 3, y, 1, _weapon_y_scale, aim_dir, c_white, 1 );
}

if (face == 3) {
	draw_sprite_ext( spr_butcher, 0, x, y + 3, 1, _weapon_y_scale, aim_dir, c_white, 1 );	
}

// Draw the player
draw_self();
