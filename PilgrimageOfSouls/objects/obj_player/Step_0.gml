move_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
move_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
move_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
move_down = keyboard_check(ord("S")) || keyboard_check(vk_down);


if (move_right && !place_meeting(x + 1, y, obj_tree)) {
	x += x_spd;
}

if (move_left && !place_meeting(x - 1, y, obj_tree)) {
	x -= x_spd;
}

if (move_up && !place_meeting(x, y - 1, obj_tree)) {
	y -= y_spd;
}

if (move_down && !place_meeting(x, y + 1, obj_tree)) {
	y += y_spd;
}