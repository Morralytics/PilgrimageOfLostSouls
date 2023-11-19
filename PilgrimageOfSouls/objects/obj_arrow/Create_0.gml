aim_dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = aim_dir - 90;
image_xscale = .5;
image_yscale = .5;

move_towards_point(obj_bow.click_x, obj_bow.click_y, 2);