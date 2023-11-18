// Player variables
x_spd = 0;
y_spd = 0;

move_spd = 1;

// Sprite control
aim_dir = 0;
weapon_offset_dist = 3;
face = 3;
sprite[0] = spr_player_right;
sprite[1] = spr_player_up;
sprite[2] = spr_player_left;
sprite[3] = spr_player_down;

// Weapon equip
equip = 1;
_x_offset = lengthdir_x( weapon_offset_dist, aim_dir ); 
_y_offset = lengthdir_y( weapon_offset_dist, aim_dir );