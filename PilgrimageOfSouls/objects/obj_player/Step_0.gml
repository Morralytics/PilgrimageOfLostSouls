move_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
move_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
move_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
move_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

// Retrieving x and y speed and direction values
x_spd = (move_right - move_left) * move_spd;
y_spd = (move_down - move_up) * move_spd;

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