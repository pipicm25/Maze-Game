// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bulletShooting(){
	/// LOGIC FOR BULLET SHOOTING.
	if (image_xscale == -1) { // Facing left 
		bullet_offset_x = -abs(bullet_offset_x); // absolute negative value of bullet offset 
	} else if (image_xscale == 1) {
		bullet_offset_x = abs(bullet_offset_x); // absolute value of bullet offset
	}
}