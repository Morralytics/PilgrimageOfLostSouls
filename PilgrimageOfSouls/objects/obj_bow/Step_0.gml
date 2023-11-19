left_click = mouse_check_button_pressed(mb_left);

_player_location_x = obj_player.x;
_player_location_y = obj_player.y;

x = _player_location_x;
y = _player_location_y;

weapon_dir = obj_player.aim_dir;
image_angle = weapon_dir;

	
image_yscale = _weapon_y_scale;

depth = -bbox_bottom;

if (left_click) {
	click_x = mouse_x;
	click_y = mouse_y;
	instance_create_layer(x, y, 0, obj_arrow);
}