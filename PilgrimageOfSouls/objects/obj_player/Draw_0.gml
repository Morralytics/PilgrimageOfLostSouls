// Draw the player
draw_self();

// Draw the weapon
// ( sprite, image index, players x, players y, x scale, y scale, rotation, color blend, opacity )
if (face == 0) {
	draw_sprite_ext( spr_butcher, 0, x + 3, y, 1, 1, aim_dir, c_white, 1 );
}

if (face == 1) {
	draw_sprite_ext( spr_butcher, 0, x, y - 3, 1, 1, aim_dir, c_white, 1 );
}

if (face == 2) {
	draw_sprite_ext( spr_butcher, 0, x - 3, y, 1, 1, aim_dir, c_white, 1 );
}

if (face == 3) {
	draw_sprite_ext( spr_butcher, 0, x, y + 3, 1, 1, aim_dir, c_white, 1 );	
}