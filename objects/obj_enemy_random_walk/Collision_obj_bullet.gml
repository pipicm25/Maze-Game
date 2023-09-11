with (other) instance_destroy();
hp--;
if (hp <= 0) { // Enemy died !!
	instance_change(obj_enemy_death, true);
}