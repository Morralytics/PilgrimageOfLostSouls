// Draw the player
draw_self();

// Draw the weapon
// ( sprite, image index, players x, players y, x scale, y scale, rotation, color blend, opacity )
draw_sprite_ext( spr_butcher, 0, x, y, 1, 1, aim_dir, c_white, 1 );