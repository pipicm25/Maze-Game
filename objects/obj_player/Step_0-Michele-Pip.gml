/// @description Player movement
if (keyboard_check(vk_right)) {
	x += spd;
	image_xscale = 1;	
}
if (keyboard_check(vk_left)) { 
	x -= spd;
	image_xscale = -1
}
if (keyboard_check(vk_up)) 
	y -= spd;
if (keyboard_check(vk_down))
	y += spd;


if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	/// LOGIC FOR BULLET SHOOTING.
	if (image_xscale == -1) { // Facing left
		bullet_offset_x = -abs(bullet_offset_x);
	} else if (image_xscale == 1) {
		bullet_offset_x = abs(bullet_offset_x);
	}
	show_debug_message("Shooting from x: " + string(x+bullet_offset_x) + ", y: " + string(y+bullet_offset_y));
	instance_create_layer(x + bullet_offset_x, y + bullet_offset_y, "bullet_layer", obj_bullet);
	cooldown = fire_rate;
}
cooldown = cooldown - 1;
camera_set_view_size(view_camera[0], 1000, 500);
//image_angle = point_direction(x, y, mouse_x, mouse_y);