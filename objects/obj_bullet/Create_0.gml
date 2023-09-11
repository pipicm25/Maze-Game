/// @description Insert description here
// You can write your code in this editor

if (obj_player.image_xscale == 1) {
    direction = 0; // Facing right
} else {
    direction = 180; // Facing left
}
direction += random_range(-2.5, 2.5);
image_angle = direction;
speed = 10;