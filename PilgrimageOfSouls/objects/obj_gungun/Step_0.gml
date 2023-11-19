depth = -bbox_top;

if (place_meeting(x, y, obj_butcher)) {
	instance_destroy();
}

if (place_meeting(x, y, obj_arrow)) {
	instance_destroy();
}

if (hp <= 0) {
	instance_create_layer(x,y, 0, obj_gungun_dead);
	instance_destroy();
}