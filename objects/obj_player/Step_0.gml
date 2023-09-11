/// @description Player movement
if (keyboard_check(vk_right)) { // right arrow
	x += 3;
	image_xscale = 1; // face right
}
if (keyboard_check(vk_left)) { // left arrow
	x -= 3;
	image_xscale = -1 // face left
}
if (keyboard_check(vk_up)) // up arrow
	y -= 3;
if (keyboard_check(vk_down)) // down arrow
	y += 3;


if (global.hp <= 0) { // if player is dead
	room_goto(loss_screen); // go to the loss room
}

cooldown -= 1;
if (mouse_check_button(mb_left)) && (cooldown < 1) // if the player pressed left mouse and the cooldown is finished
{
	bulletShooting(); // Find whether bullet should be shot from left or right
	//show_debug_message("Shooting from x: " + string(x+bullet_offset_x) + ", y: " + string(y+bullet_offset_y));
	// Create the bullet taking into account the direction the player is facing and setting the offset for spawning the bullet.
	instance_create_layer(x + bullet_offset_x, y + bullet_offset_y, "bullet_layer", obj_bullet); 
	cooldown = fire_rate;
}
camera_set_view_size(view_camera[0], 1000, 500);