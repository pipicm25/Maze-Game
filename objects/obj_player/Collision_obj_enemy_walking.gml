/// @description Collision with enemy - loss checks and hp deduction

x = origin_x;
y = origin_y;
direction = origin_direction;
show_debug_message("!!! [" + string(hp) + " LIVES]");
hp -= 1;
if (hp <= 0) {
	room_goto(rm_loss);	
}