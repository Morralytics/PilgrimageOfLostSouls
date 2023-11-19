// GunGun variables
hp = 3;
dmg = 1;

x_spd = 0;
y_spd = 0;

aim_dir = 0;

equip = 1;

// Create weapon object instance
	// Uses the with function to connect a variable between the main object and the weapon instance
	weapon = instance_create_layer(x, y, 0, obj_gungun_staff);
	with (weapon) followid = other.id;