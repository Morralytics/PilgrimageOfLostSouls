// GunGun variables
hp = 1;
dmg = 1;

x_spd = 0;
y_spd = 0;

aim_dir = 0;

equip = 1;

var _weapon = instance_create_layer(x, y, 0, obj_gungun_staff);
with (_weapon) followid = other.id;