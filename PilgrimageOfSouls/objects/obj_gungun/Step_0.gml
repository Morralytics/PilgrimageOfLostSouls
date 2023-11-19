depth = -bbox_top;

if (place_meeting(x, y, obj_butcher)) {
	instance_destroy();
}

if (place_meeting(x, y, obj_arrow)) {
	instance_destroy();
}

if (hp < 1) {
	instance_destroy();
}