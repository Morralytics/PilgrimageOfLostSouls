move_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
move_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
move_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
move_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

if (move_right) {
	x += move_spd;	
}

if (move_left) {
	x -= move_spd;
}

if (move_up) {
	y -= move_spd;
}

if (move_down) {
	y += move_spd;
}