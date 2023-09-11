// Player shoots and hits enemy
with (other) instance_destroy(); // Kill bullet
hp--; // Decrease health of enemy before checking
if (hp <= 0) { // Is enemy dead
	instance_change(obj_enemy_death, true); // Kill enemy (change to death animation)		
}