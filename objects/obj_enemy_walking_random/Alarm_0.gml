/// @description Random movements
function generate_random_x() {
	return irandom_range(x-60, x+60);	
}

function generate_random_y() {
	return irandom_range(y-60, y+60);	
}

function valid_values(rand_x, rand_y) {
	return (abs(rand_x - start_pos_x) < 100 && abs(rand_y - start_pos_y) < 100)
}

var rand_x = generate_random_x();
var rand_y = generate_random_y();
show_debug_message(string(rand_x) + " " + string(rand_y));
// if the place the enemy wants to move to is NOT touching a brick
if (!position_meeting(rand_x, rand_y, obj_brick) && valid_values(rand_x, rand_y)) {
	show_debug_message("Not hitting brick, moving to X: " + string(x + rand_x) + " Y: " + string(x + rand_y));
	x = rand_x;
	y = rand_y;
    alarm[0] = movement_cooldown;
}
/*

if (position_meeting(x+5, y, obj_brick)) {
		image_xscale = -1;
		x -= 5;
	} else {
		x += 5;
	}
	*/
	
	